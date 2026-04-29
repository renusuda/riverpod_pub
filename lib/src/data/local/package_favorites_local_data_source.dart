abstract class PackageFavoritesLocalDataSource {
  Future<bool> isFavorite(String packageName);
  Future<bool> toggleFavorite(String packageName);
}
