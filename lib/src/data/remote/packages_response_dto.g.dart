// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackagesResponseDto _$PackagesResponseDtoFromJson(Map<String, dynamic> json) =>
    _PackagesResponseDto(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackagesResponseDtoToJson(
  _PackagesResponseDto instance,
) => <String, dynamic>{'packages': instance.packages};

_PackageDto _$PackageDtoFromJson(Map<String, dynamic> json) => _PackageDto(
  name: json['name'] as String,
  latest: PackageLatestDto.fromJson(json['latest'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PackageDtoToJson(_PackageDto instance) =>
    <String, dynamic>{'name': instance.name, 'latest': instance.latest};

_PackageLatestDto _$PackageLatestDtoFromJson(Map<String, dynamic> json) =>
    _PackageLatestDto(
      version: json['version'] as String,
      pubspec: PackagePubspecDto.fromJson(
        json['pubspec'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PackageLatestDtoToJson(_PackageLatestDto instance) =>
    <String, dynamic>{'version': instance.version, 'pubspec': instance.pubspec};

_PackagePubspecDto _$PackagePubspecDtoFromJson(Map<String, dynamic> json) =>
    _PackagePubspecDto(description: json['description'] as String);

Map<String, dynamic> _$PackagePubspecDtoToJson(_PackagePubspecDto instance) =>
    <String, dynamic>{'description': instance.description};
