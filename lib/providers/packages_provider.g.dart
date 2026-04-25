// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(packagesRemoteDataSource)
final packagesRemoteDataSourceProvider = PackagesRemoteDataSourceProvider._();

final class PackagesRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PackagesRemoteDataSource,
          PackagesRemoteDataSource,
          PackagesRemoteDataSource
        >
    with $Provider<PackagesRemoteDataSource> {
  PackagesRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packagesRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packagesRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PackagesRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PackagesRemoteDataSource create(Ref ref) {
    return packagesRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PackagesRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PackagesRemoteDataSource>(value),
    );
  }
}

String _$packagesRemoteDataSourceHash() =>
    r'1df869f50a4349221754934d47107f875f775579';

@ProviderFor(packagesRepository)
final packagesRepositoryProvider = PackagesRepositoryProvider._();

final class PackagesRepositoryProvider
    extends
        $FunctionalProvider<
          PackagesRepository,
          PackagesRepository,
          PackagesRepository
        >
    with $Provider<PackagesRepository> {
  PackagesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packagesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packagesRepositoryHash();

  @$internal
  @override
  $ProviderElement<PackagesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PackagesRepository create(Ref ref) {
    return packagesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PackagesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PackagesRepository>(value),
    );
  }
}

String _$packagesRepositoryHash() =>
    r'4cd15bf7d486ddab19fff2b6088d31d24f84aec6';

@ProviderFor(packages)
final packagesProvider = PackagesProvider._();

final class PackagesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Package>>,
          List<Package>,
          FutureOr<List<Package>>
        >
    with $FutureModifier<List<Package>>, $FutureProvider<List<Package>> {
  PackagesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packagesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packagesHash();

  @$internal
  @override
  $FutureProviderElement<List<Package>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Package>> create(Ref ref) {
    return packages(ref);
  }
}

String _$packagesHash() => r'cc3a2593c8d8eb3c64cda4f3c6e5a4d7d69cf36e';
