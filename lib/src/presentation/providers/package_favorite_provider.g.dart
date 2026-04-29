// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_favorite_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PackageFavorite)
final packageFavoriteProvider = PackageFavoriteFamily._();

final class PackageFavoriteProvider
    extends $NotifierProvider<PackageFavorite, bool> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PackageFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$packageFavoriteHash() => r'fbd8edd12ffeadc3032308364c145dca64bec771';

final class PackageFavoriteFamily extends $Family
    with $ClassFamilyOverride<PackageFavorite, bool, bool, bool, String> {
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

abstract class _$PackageFavorite extends $Notifier<bool> {
  late final _$args = ref.$arg as String;
  String get packageName => _$args;

  bool build(String packageName);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
