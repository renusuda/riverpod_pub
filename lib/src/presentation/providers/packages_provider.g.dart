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
    r'0ec823968ca475822746c4de3191b6a5813b9a81';

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
final packagesProvider = PackagesFamily._();

final class PackagesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Package>>,
          List<Package>,
          FutureOr<List<Package>>
        >
    with $FutureModifier<List<Package>>, $FutureProvider<List<Package>> {
  PackagesProvider._({
    required PackagesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'packagesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$packagesHash();

  @override
  String toString() {
    return r'packagesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Package>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Package>> create(Ref ref) {
    final argument = this.argument as int;
    return packages(ref, page: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PackagesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$packagesHash() => r'80e513a788023ab32a924674d43032e2b53ec60d';

final class PackagesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Package>>, int> {
  PackagesFamily._()
    : super(
        retry: null,
        name: r'packagesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PackagesProvider call({required int page}) =>
      PackagesProvider._(argument: page, from: this);

  @override
  String toString() => r'packagesProvider';
}

@ProviderFor(packageDetail)
final packageDetailProvider = PackageDetailFamily._();

final class PackageDetailProvider
    extends $FunctionalProvider<AsyncValue<Package>, Package, FutureOr<Package>>
    with $FutureModifier<Package>, $FutureProvider<Package> {
  PackageDetailProvider._({
    required PackageDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'packageDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$packageDetailHash();

  @override
  String toString() {
    return r'packageDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Package> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Package> create(Ref ref) {
    final argument = this.argument as String;
    return packageDetail(ref, packageName: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$packageDetailHash() => r'c36ca03da2849a4ba6ec75113266bf470ef72f10';

final class PackageDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Package>, String> {
  PackageDetailFamily._()
    : super(
        retry: null,
        name: r'packageDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PackageDetailProvider call({required String packageName}) =>
      PackageDetailProvider._(argument: packageName, from: this);

  @override
  String toString() => r'packageDetailProvider';
}
