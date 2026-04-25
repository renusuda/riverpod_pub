// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(packages)
final packagesProvider = PackagesProvider._();

final class PackagesProvider
    extends $FunctionalProvider<List<Package>, List<Package>, List<Package>>
    with $Provider<List<Package>> {
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
  $ProviderElement<List<Package>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Package> create(Ref ref) {
    return packages(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Package> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Package>>(value),
    );
  }
}

String _$packagesHash() => r'36e944244737d52c362f2e34df204b7c5a290628';
