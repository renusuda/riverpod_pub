import 'package:pub/src/data/local/app_database.dart';
import 'package:pub/src/data/local/package_favorites_local_data_source.dart';

class CachePackageFavoritesLocalDataSource
    implements PackageFavoritesLocalDataSource {
  CachePackageFavoritesLocalDataSource({required AppDatabase database})
    : _database = database;

  final AppDatabase _database;

  @override
  Future<bool> isFavorite(String packageName) async {
    final row =
        await (_database.select(_database.favoritePackages)
              ..where((table) => table.packageName.equals(packageName)))
            .getSingleOrNull();
    return row != null;
  }

  @override
  Future<bool> toggleFavorite(String packageName) async {
    final current = await isFavorite(packageName);
    if (current) {
      await (_database.delete(
        _database.favoritePackages,
      )..where((t) => t.packageName.equals(packageName))).go();
      return false;
    } else {
      await _database
          .into(_database.favoritePackages)
          .insert(FavoritePackagesCompanion.insert(packageName: packageName));
      return true;
    }
  }
}
