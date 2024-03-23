import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:password_generator/app/env/env.dart';
import 'package:password_generator/core/clients/cache/cache_migration_client.dart';
import 'package:password_generator/core/utils/encryption/encryption_utils.dart';
import 'package:password_generator/core/utils/package_info/package_info_utils.dart';
import 'package:path_provider/path_provider.dart';

Future<void> bootstrap({required FutureOr<Widget> Function() builder}) async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash();
  // // await Firebase.initializeApp();
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   LoggerUtils.instance.logFatalError(details.exceptionAsString(), details.stack);
  //   // FirebaseCrashlytics.instance.recordFlutterError(details);
  // };
  // // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   LoggerUtils.instance.logFatalError(error.toString(), stack);
  //   return true;
  // };

  await Future.wait([
    Hive.initFlutter(),
    PackageInfoUtils.init(),
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    ),
  ]);

  final encryptionKey = EncryptionUtils.generateEncryptionKeyFromSecretKey(Env.secretKey);
  final cacheMigrationClient = CacheMigrationClient();
  await cacheMigrationClient.migrate(encryptionKey: encryptionKey);

  // Initialize Hydrated Bloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
    encryptionCipher: HydratedAesCipher(encryptionKey),
  );

  runApp(await builder());
}
