import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub/src/domain/package_score.dart';

part 'package.freezed.dart';
part 'package.g.dart';

@freezed
sealed class Package with _$Package {
  factory Package({
    required String name,
    required String version,
    required String description,
    PackageScore? score,
  }) = _Package;

  factory Package.fromJson(Map<String, Object?> json) =>
      _$PackageFromJson(json);
}
