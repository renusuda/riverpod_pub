import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_package.freezed.dart';
part 'pub_package.g.dart';

@freezed
sealed class PubPackage with _$PubPackage {
  factory PubPackage({
    required String name,
    required String version,
    required String description,
  }) = _PubPackage;

  factory PubPackage.fromJson(Map<String, Object?> json) =>
      _$PubPackageFromJson(json);
}
