/// This is where we define constants related to the cache
///
/// Each object in the cache is identified by a unique type id
///
/// Each box in the cache is identified by a unique name
abstract final class CacheConstants {
  CacheConstants._();

// Boxes
  static const String tempBox = 'temp_box';
  static const String hydratedBox = 'hydrated_box';
  static const String migrationBox = 'migration_box';

  // Keys
  static const String migrationCompleted = 'migration_completed';

  static const encryptionKey = [
    89,
    96,
    38,
    193,
    16,
    202,
    168,
    69,
    7,
    15,
    65,
    50,
    224,
    146,
    249,
    249,
    95,
    46,
    108,
    194,
    34,
    252,
    108,
    111,
    189,
    152,
    78,
    201,
    191,
    105,
    247,
    7,
  ];
}
