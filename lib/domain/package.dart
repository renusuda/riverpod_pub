import 'package:freezed_annotation/freezed_annotation.dart';

part 'package.freezed.dart';
part 'package.g.dart';

@freezed
sealed class Package with _$Package {
  factory Package({
    required String name,
    required String version,
    required String description,
  }) = _Package;

  factory Package.fromJson(Map<String, Object?> json) =>
      _$PackageFromJson(json);
}
