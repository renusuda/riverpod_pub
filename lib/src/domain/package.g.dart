// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
  name: json['name'] as String,
  version: json['version'] as String,
  description: json['description'] as String,
  score: json['score'] == null
      ? null
      : PackageScore.fromJson(json['score'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
  'name': instance.name,
  'version': instance.version,
  'description': instance.description,
  'score': instance.score,
};
