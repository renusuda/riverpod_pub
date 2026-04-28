// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageScore _$PackageScoreFromJson(Map<String, dynamic> json) =>
    _PackageScore(
      likeCount: (json['likeCount'] as num).toInt(),
      grantedPoints: (json['grantedPoints'] as num).toInt(),
      maxPoints: (json['maxPoints'] as num).toInt(),
    );

Map<String, dynamic> _$PackageScoreToJson(_PackageScore instance) =>
    <String, dynamic>{
      'likeCount': instance.likeCount,
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
    };
