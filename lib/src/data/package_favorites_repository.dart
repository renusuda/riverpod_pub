import 'package:pub/src/data/local/package_favorites_local_data_source.dart';

class PackageFavoritesRepository {
  PackageFavoritesRepository({
    required PackageFavoritesLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  final PackageFavoritesLocalDataSource _localDataSource;

  Future<bool> isFavorite(String packageName) async {
    return await _localDataSource.isFavorite(packageName);
  }

  Future<bool> toggle(String packageName) async {
    return await _localDataSource.toggleFavorite(packageName);
  }
}
