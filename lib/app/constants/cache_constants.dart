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
}
