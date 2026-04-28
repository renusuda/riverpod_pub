// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageScore {

 int get likeCount; int get grantedPoints; int get maxPoints;
/// Create a copy of PackageScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageScoreCopyWith<PackageScore> get copyWith => _$PackageScoreCopyWithImpl<PackageScore>(this as PackageScore, _$identity);

  /// Serializes this PackageScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageScore&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.grantedPoints, grantedPoints) || other.grantedPoints == grantedPoints)&&(identical(other.maxPoints, maxPoints) || other.maxPoints == maxPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeCount,grantedPoints,maxPoints);

@override
String toString() {
  return 'PackageScore(likeCount: $likeCount, grantedPoints: $grantedPoints, maxPoints: $maxPoints)';
}


}

/// @nodoc
abstract mixin class $PackageScoreCopyWith<$Res>  {
  factory $PackageScoreCopyWith(PackageScore value, $Res Function(PackageScore) _then) = _$PackageScoreCopyWithImpl;
@useResult
$Res call({
 int likeCount, int grantedPoints, int maxPoints
});




}
/// @nodoc
class _$PackageScoreCopyWithImpl<$Res>
    implements $PackageScoreCopyWith<$Res> {
  _$PackageScoreCopyWithImpl(this._self, this._then);

  final PackageScore _self;
  final $Res Function(PackageScore) _then;

/// Create a copy of PackageScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeCount = null,Object? grantedPoints = null,Object? maxPoints = null,}) {
  return _then(_self.copyWith(
likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,grantedPoints: null == grantedPoints ? _self.grantedPoints : grantedPoints // ignore: cast_nullable_to_non_nullable
as int,maxPoints: null == maxPoints ? _self.maxPoints : maxPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageScore].
extension PackageScorePatterns on PackageScore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageScore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageScore value)  $default,){
final _that = this;
switch (_that) {
case _PackageScore():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageScore value)?  $default,){
final _that = this;
switch (_that) {
case _PackageScore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int likeCount,  int grantedPoints,  int maxPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageScore() when $default != null:
return $default(_that.likeCount,_that.grantedPoints,_that.maxPoints);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int likeCount,  int grantedPoints,  int maxPoints)  $default,) {final _that = this;
switch (_that) {
case _PackageScore():
return $default(_that.likeCount,_that.grantedPoints,_that.maxPoints);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int likeCount,  int grantedPoints,  int maxPoints)?  $default,) {final _that = this;
switch (_that) {
case _PackageScore() when $default != null:
return $default(_that.likeCount,_that.grantedPoints,_that.maxPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageScore implements PackageScore {
   _PackageScore({required this.likeCount, required this.grantedPoints, required this.maxPoints});
  factory _PackageScore.fromJson(Map<String, dynamic> json) => _$PackageScoreFromJson(json);

@override final  int likeCount;
@override final  int grantedPoints;
@override final  int maxPoints;

/// Create a copy of PackageScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageScoreCopyWith<_PackageScore> get copyWith => __$PackageScoreCopyWithImpl<_PackageScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageScore&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.grantedPoints, grantedPoints) || other.grantedPoints == grantedPoints)&&(identical(other.maxPoints, maxPoints) || other.maxPoints == maxPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeCount,grantedPoints,maxPoints);

@override
String toString() {
  return 'PackageScore(likeCount: $likeCount, grantedPoints: $grantedPoints, maxPoints: $maxPoints)';
}


}

/// @nodoc
abstract mixin class _$PackageScoreCopyWith<$Res> implements $PackageScoreCopyWith<$Res> {
  factory _$PackageScoreCopyWith(_PackageScore value, $Res Function(_PackageScore) _then) = __$PackageScoreCopyWithImpl;
@override @useResult
$Res call({
 int likeCount, int grantedPoints, int maxPoints
});




}
/// @nodoc
class __$PackageScoreCopyWithImpl<$Res>
    implements _$PackageScoreCopyWith<$Res> {
  __$PackageScoreCopyWithImpl(this._self, this._then);

  final _PackageScore _self;
  final $Res Function(_PackageScore) _then;

/// Create a copy of PackageScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeCount = null,Object? grantedPoints = null,Object? maxPoints = null,}) {
  return _then(_PackageScore(
likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,grantedPoints: null == grantedPoints ? _self.grantedPoints : grantedPoints // ignore: cast_nullable_to_non_nullable
as int,maxPoints: null == maxPoints ? _self.maxPoints : maxPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
