import 'package:hive_flutter/hive_flutter.dart';
import 'package:password_generator/app/constants/cache_constants.dart';
import 'package:password_generator/core/utils/logger/logger_utils.dart';

enum MigrationStatus {
  completed(true),
  notCompleted(false);

  const MigrationStatus(this.value);

  final bool value;
}

class CacheMigrationClient {
  Future<void> migrate({required List<int> encryptionKey}) async {
    try {
      final hasHydratedBox = await _boxExists(CacheConstants.hydratedBox);
      final migrationStatus = await _getMigrationStatus();

      if (hasHydratedBox && migrationStatus == MigrationStatus.notCompleted) {
        await _migrateToEncryptedBox(
          hydratedBoxName: CacheConstants.hydratedBox,
          tempBoxName: CacheConstants.tempBox,
          encryptionKey: encryptionKey,
        );
      } else {
        await _setMigrationStatus(MigrationStatus.completed);
      }
    } catch (e) {
      LoggerUtils.instance.logError('Error during migration: $e');
    }
  }

  Future<bool> _boxExists(String boxName) async {
    return Hive.boxExists(boxName);
  }

  Future<void> _setMigrationStatus(MigrationStatus status) async {
    final migrationBox = await Hive.openBox<dynamic>(CacheConstants.migrationBox);
    await migrationBox.put(CacheConstants.migrationCompleted, status.value);
  }

  Future<MigrationStatus> _getMigrationStatus() async {
    final migrationBox = await Hive.openBox<dynamic>(CacheConstants.migrationBox);
    final migrationCompleted = migrationBox.get(CacheConstants.migrationCompleted);
    return migrationCompleted == true ? MigrationStatus.completed : MigrationStatus.notCompleted;
  }

  Future<void> _migrateToEncryptedBox({
    required String hydratedBoxName,
    required String tempBoxName,
    required List<int> encryptionKey,
  }) async {
    // Open the existing hydrated box.
    final oldHydratedBox = await Hive.openBox<dynamic>(hydratedBoxName);
    // Create a new temporary box to hold the data from the hydrated box
    final tempBox = await Hive.openBox<dynamic>(tempBoxName);

    // Migrate data from the existing box to the temporary box
    for (final key in oldHydratedBox.keys) {
      final value = oldHydratedBox.get(key);
      await tempBox.put(key, value);
    }
    // Delete the old hydrated box from the disk
    await oldHydratedBox.deleteFromDisk();

    // Open a new hydrated box with the given encryption key
    final newHydratedBox = await Hive.openBox<dynamic>(
      hydratedBoxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    // Migrate the data from the temporary box to the new encrypted box
    for (final key in tempBox.keys) {
      final value = tempBox.get(key);
      await newHydratedBox.put(key, value);
    }
    // Complete the migration by closing the new box, deleting the temp box, and updating the migration status
    await Future.wait(
      [
        newHydratedBox.close(),
        tempBox.deleteFromDisk(),
        _setMigrationStatus(MigrationStatus.completed),
      ],
    );
  }
}
