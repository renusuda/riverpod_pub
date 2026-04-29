// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_favorite_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'44154e51c3f3079ee293d8ad0ebd1e17cca871ed';

@ProviderFor(packageFavoritesLocalDataSource)
final packageFavoritesLocalDataSourceProvider =
    PackageFavoritesLocalDataSourceProvider._();

final class PackageFavoritesLocalDataSourceProvider
    extends
        $FunctionalProvider<
          PackageFavoritesLocalDataSource,
          PackageFavoritesLocalDataSource,
          PackageFavoritesLocalDataSource
        >
    with $Provider<PackageFavoritesLocalDataSource> {
  PackageFavoritesLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packageFavoritesLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packageFavoritesLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<PackageFavoritesLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PackageFavoritesLocalDataSource create(Ref ref) {
    return packageFavoritesLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PackageFavoritesLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PackageFavoritesLocalDataSource>(
        value,
      ),
    );
  }
}

String _$packageFavoritesLocalDataSourceHash() =>
    r'05a940fbdfb7d1a2c44df0beda33d9f19171d2b5';

@ProviderFor(packageFavoritesRepository)
final packageFavoritesRepositoryProvider =
    PackageFavoritesRepositoryProvider._();

final class PackageFavoritesRepositoryProvider
    extends
        $FunctionalProvider<
          PackageFavoritesRepository,
          PackageFavoritesRepository,
          PackageFavoritesRepository
        >
    with $Provider<PackageFavoritesRepository> {
  PackageFavoritesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packageFavoritesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packageFavoritesRepositoryHash();

  @$internal
  @override
  $ProviderElement<PackageFavoritesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PackageFavoritesRepository create(Ref ref) {
    return packageFavoritesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PackageFavoritesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PackageFavoritesRepository>(value),
    );
  }
}

String _$packageFavoritesRepositoryHash() =>
    r'5677d303e6016e31f6305322401aecfb906139eb';

@ProviderFor(PackageFavorite)
final packageFavoriteProvider = PackageFavoriteFamily._();

final class PackageFavoriteProvider
    extends $AsyncNotifierProvider<PackageFavorite, bool> {
  PackageFavoriteProvider._({
    required PackageFavoriteFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'packageFavoriteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$packageFavoriteHash();

  @override
  String toString() {
    return r'packageFavoriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PackageFavorite create() => PackageFavorite();

  @override
  bool operator ==(Object other) {
    return other is PackageFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$packageFavoriteHash() => r'670cc2624d6eeb5a265c31ef122a002a0268d415';

final class PackageFavoriteFamily extends $Family
    with
        $ClassFamilyOverride<
          PackageFavorite,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          String
        > {
  PackageFavoriteFamily._()
    : super(
        retry: null,
        name: r'packageFavoriteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PackageFavoriteProvider call(String packageName) =>
      PackageFavoriteProvider._(argument: packageName, from: this);

  @override
  String toString() => r'packageFavoriteProvider';
}

abstract class _$PackageFavorite extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as String;
  String get packageName => _$args;

  FutureOr<bool> build(String packageName);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
