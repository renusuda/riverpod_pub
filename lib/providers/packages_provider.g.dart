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
    extends
        $FunctionalProvider<
          List<PubPackage>,
          List<PubPackage>,
          List<PubPackage>
        >
    with $Provider<List<PubPackage>> {
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
  $ProviderElement<List<PubPackage>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<PubPackage> create(Ref ref) {
    return packages(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<PubPackage> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<PubPackage>>(value),
    );
  }
}

String _$packagesHash() => r'cec5634a15e0cfb3e8060e5d5b5cb10946b1dbfe';
