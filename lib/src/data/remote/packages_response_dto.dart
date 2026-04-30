import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';

part 'packages_response_dto.freezed.dart';
part 'packages_response_dto.g.dart';

@freezed
sealed class PackagesResponseDto with _$PackagesResponseDto {
  const factory PackagesResponseDto({
    required List<PackageResponseDto> packages,
  }) = _PackagesResponseDto;

  factory PackagesResponseDto.fromJson(Map<String, Object?> json) =>
      _$PackagesResponseDtoFromJson(json);
}

@freezed
sealed class SearchPackagesResponseDto with _$SearchPackagesResponseDto {
  const factory SearchPackagesResponseDto({
    required List<SearchPackageResponseDto> packages,
  }) = _SearchPackagesResponseDto;

  factory SearchPackagesResponseDto.fromJson(Map<String, Object?> json) =>
      _$SearchPackagesResponseDtoFromJson(json);
}

@freezed
sealed class SearchPackageResponseDto with _$SearchPackageResponseDto {
  const factory SearchPackageResponseDto({required String package}) =
      _SearchPackageResponseDto;

  factory SearchPackageResponseDto.fromJson(Map<String, Object?> json) =>
      _$SearchPackageResponseDtoFromJson(json);
}

@freezed
sealed class PackageResponseDto with _$PackageResponseDto {
  const PackageResponseDto._();

  const factory PackageResponseDto({
    required String name,
    required PackageLatestDto latest,
  }) = _PackageResponseDto;

  factory PackageResponseDto.fromJson(Map<String, Object?> json) =>
      _$PackageResponseDtoFromJson(json);

  Package toDomain() {
    return Package(
      name: name,
      version: latest.version,
      description: latest.pubspec.description,
    );
  }
}

@freezed
sealed class PackageScoreDto with _$PackageScoreDto {
  const PackageScoreDto._();

  const factory PackageScoreDto({
    required int likeCount,
    required int grantedPoints,
    required int maxPoints,
  }) = _PackageScoreDto;

  factory PackageScoreDto.fromJson(Map<String, Object?> json) =>
      _$PackageScoreDtoFromJson(json);

  PackageScore toDomain() {
    return PackageScore(
      likeCount: likeCount,
      grantedPoints: grantedPoints,
      maxPoints: maxPoints,
    );
  }
}

@freezed
sealed class PackageLatestDto with _$PackageLatestDto {
  const factory PackageLatestDto({
    required String version,
    required PackagePubspecDto pubspec,
  }) = _PackageLatestDto;

  factory PackageLatestDto.fromJson(Map<String, Object?> json) =>
      _$PackageLatestDtoFromJson(json);
}

@freezed
sealed class PackagePubspecDto with _$PackagePubspecDto {
  const factory PackagePubspecDto({required String description}) =
      _PackagePubspecDto;

  factory PackagePubspecDto.fromJson(Map<String, Object?> json) =>
      _$PackagePubspecDtoFromJson(json);
}
