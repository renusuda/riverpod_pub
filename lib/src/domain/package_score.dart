import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_score.freezed.dart';
part 'package_score.g.dart';

@freezed
sealed class PackageScore with _$PackageScore {
  factory PackageScore({
    required int likeCount,
    required int grantedPoints,
    required int maxPoints,
  }) = _PackageScore;

  factory PackageScore.fromJson(Map<String, Object?> json) =>
      _$PackageScoreFromJson(json);
}
