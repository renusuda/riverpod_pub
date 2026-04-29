import 'package:pub/src/data/local/app_database.dart';
import 'package:pub/src/data/local/cache_package_favorites_local_data_source.dart';
import 'package:pub/src/data/local/package_favorites_local_data_source.dart';
import 'package:pub/src/data/package_favorites_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_favorite_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(database.close);
  return database;
}

@riverpod
PackageFavoritesLocalDataSource packageFavoritesLocalDataSource(Ref ref) {
  return CachePackageFavoritesLocalDataSource(
    database: ref.watch(appDatabaseProvider),
  );
}

@riverpod
PackageFavoritesRepository packageFavoritesRepository(Ref ref) {
  return PackageFavoritesRepository(
    localDataSource: ref.watch(packageFavoritesLocalDataSourceProvider),
  );
}

@riverpod
class PackageFavorite extends _$PackageFavorite {
  @override
  Future<bool> build(String packageName) async {
    final repository = ref.watch(packageFavoritesRepositoryProvider);
    return await repository.isFavorite(packageName);
  }

  Future<void> toggle() async {
    await ref.read(packageFavoritesRepositoryProvider).toggle(packageName);
    ref.invalidateSelf();
  }
}
