import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_favorite_provider.g.dart';

@riverpod
class PackageFavorite extends _$PackageFavorite {
  @override
  bool build(String packageName) {
    return false;
  }

  void toggle() {
    state = !state;
  }
}
