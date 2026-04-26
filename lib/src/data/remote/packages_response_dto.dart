import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub/src/domain/package.dart';

part 'packages_response_dto.freezed.dart';
part 'packages_response_dto.g.dart';

@freezed
sealed class PackagesResponseDto with _$PackagesResponseDto {
  const factory PackagesResponseDto({required List<PackageDto> packages}) =
      _PackagesResponseDto;

  factory PackagesResponseDto.fromJson(Map<String, Object?> json) =>
      _$PackagesResponseDtoFromJson(json);
}

@freezed
sealed class PackageDto with _$PackageDto {
  const PackageDto._();

  const factory PackageDto({
    required String name,
    required PackageLatestDto latest,
  }) = _PackageDto;

  factory PackageDto.fromJson(Map<String, Object?> json) =>
      _$PackageDtoFromJson(json);

  Package toDomain() {
    return Package(
      name: name,
      version: latest.version,
      description: latest.pubspec.description,
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
