// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackagesResponseDto {

 List<PackageDto> get packages;
/// Create a copy of PackagesResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackagesResponseDtoCopyWith<PackagesResponseDto> get copyWith => _$PackagesResponseDtoCopyWithImpl<PackagesResponseDto>(this as PackagesResponseDto, _$identity);

  /// Serializes this PackagesResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackagesResponseDto&&const DeepCollectionEquality().equals(other.packages, packages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(packages));

@override
String toString() {
  return 'PackagesResponseDto(packages: $packages)';
}


}

/// @nodoc
abstract mixin class $PackagesResponseDtoCopyWith<$Res>  {
  factory $PackagesResponseDtoCopyWith(PackagesResponseDto value, $Res Function(PackagesResponseDto) _then) = _$PackagesResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<PackageDto> packages
});




}
/// @nodoc
class _$PackagesResponseDtoCopyWithImpl<$Res>
    implements $PackagesResponseDtoCopyWith<$Res> {
  _$PackagesResponseDtoCopyWithImpl(this._self, this._then);

  final PackagesResponseDto _self;
  final $Res Function(PackagesResponseDto) _then;

/// Create a copy of PackagesResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packages = null,}) {
  return _then(_self.copyWith(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [PackagesResponseDto].
extension PackagesResponseDtoPatterns on PackagesResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackagesResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackagesResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackagesResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _PackagesResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackagesResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _PackagesResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PackageDto> packages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackagesResponseDto() when $default != null:
return $default(_that.packages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PackageDto> packages)  $default,) {final _that = this;
switch (_that) {
case _PackagesResponseDto():
return $default(_that.packages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PackageDto> packages)?  $default,) {final _that = this;
switch (_that) {
case _PackagesResponseDto() when $default != null:
return $default(_that.packages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackagesResponseDto implements PackagesResponseDto {
  const _PackagesResponseDto({required final  List<PackageDto> packages}): _packages = packages;
  factory _PackagesResponseDto.fromJson(Map<String, dynamic> json) => _$PackagesResponseDtoFromJson(json);

 final  List<PackageDto> _packages;
@override List<PackageDto> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}


/// Create a copy of PackagesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackagesResponseDtoCopyWith<_PackagesResponseDto> get copyWith => __$PackagesResponseDtoCopyWithImpl<_PackagesResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackagesResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackagesResponseDto&&const DeepCollectionEquality().equals(other._packages, _packages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_packages));

@override
String toString() {
  return 'PackagesResponseDto(packages: $packages)';
}


}

/// @nodoc
abstract mixin class _$PackagesResponseDtoCopyWith<$Res> implements $PackagesResponseDtoCopyWith<$Res> {
  factory _$PackagesResponseDtoCopyWith(_PackagesResponseDto value, $Res Function(_PackagesResponseDto) _then) = __$PackagesResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PackageDto> packages
});




}
/// @nodoc
class __$PackagesResponseDtoCopyWithImpl<$Res>
    implements _$PackagesResponseDtoCopyWith<$Res> {
  __$PackagesResponseDtoCopyWithImpl(this._self, this._then);

  final _PackagesResponseDto _self;
  final $Res Function(_PackagesResponseDto) _then;

/// Create a copy of PackagesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packages = null,}) {
  return _then(_PackagesResponseDto(
packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageDto>,
  ));
}


}


/// @nodoc
mixin _$PackageDto {

 String get name; PackageLatestDto get latest;
/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDtoCopyWith<PackageDto> get copyWith => _$PackageDtoCopyWithImpl<PackageDto>(this as PackageDto, _$identity);

  /// Serializes this PackageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDto&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest);

@override
String toString() {
  return 'PackageDto(name: $name, latest: $latest)';
}


}

/// @nodoc
abstract mixin class $PackageDtoCopyWith<$Res>  {
  factory $PackageDtoCopyWith(PackageDto value, $Res Function(PackageDto) _then) = _$PackageDtoCopyWithImpl;
@useResult
$Res call({
 String name, PackageLatestDto latest
});


$PackageLatestDtoCopyWith<$Res> get latest;

}
/// @nodoc
class _$PackageDtoCopyWithImpl<$Res>
    implements $PackageDtoCopyWith<$Res> {
  _$PackageDtoCopyWithImpl(this._self, this._then);

  final PackageDto _self;
  final $Res Function(PackageDto) _then;

/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? latest = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as PackageLatestDto,
  ));
}
/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageLatestDtoCopyWith<$Res> get latest {
  
  return $PackageLatestDtoCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackageDto].
extension PackageDtoPatterns on PackageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageDto value)  $default,){
final _that = this;
switch (_that) {
case _PackageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageDto value)?  $default,){
final _that = this;
switch (_that) {
case _PackageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PackageLatestDto latest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageDto() when $default != null:
return $default(_that.name,_that.latest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PackageLatestDto latest)  $default,) {final _that = this;
switch (_that) {
case _PackageDto():
return $default(_that.name,_that.latest);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PackageLatestDto latest)?  $default,) {final _that = this;
switch (_that) {
case _PackageDto() when $default != null:
return $default(_that.name,_that.latest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageDto extends PackageDto {
  const _PackageDto({required this.name, required this.latest}): super._();
  factory _PackageDto.fromJson(Map<String, dynamic> json) => _$PackageDtoFromJson(json);

@override final  String name;
@override final  PackageLatestDto latest;

/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDtoCopyWith<_PackageDto> get copyWith => __$PackageDtoCopyWithImpl<_PackageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageDto&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest);

@override
String toString() {
  return 'PackageDto(name: $name, latest: $latest)';
}


}

/// @nodoc
abstract mixin class _$PackageDtoCopyWith<$Res> implements $PackageDtoCopyWith<$Res> {
  factory _$PackageDtoCopyWith(_PackageDto value, $Res Function(_PackageDto) _then) = __$PackageDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, PackageLatestDto latest
});


@override $PackageLatestDtoCopyWith<$Res> get latest;

}
/// @nodoc
class __$PackageDtoCopyWithImpl<$Res>
    implements _$PackageDtoCopyWith<$Res> {
  __$PackageDtoCopyWithImpl(this._self, this._then);

  final _PackageDto _self;
  final $Res Function(_PackageDto) _then;

/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? latest = null,}) {
  return _then(_PackageDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as PackageLatestDto,
  ));
}

/// Create a copy of PackageDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageLatestDtoCopyWith<$Res> get latest {
  
  return $PackageLatestDtoCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}


/// @nodoc
mixin _$PackageLatestDto {

 String get version; PackagePubspecDto get pubspec;
/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageLatestDtoCopyWith<PackageLatestDto> get copyWith => _$PackageLatestDtoCopyWithImpl<PackageLatestDto>(this as PackageLatestDto, _$identity);

  /// Serializes this PackageLatestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageLatestDto&&(identical(other.version, version) || other.version == version)&&(identical(other.pubspec, pubspec) || other.pubspec == pubspec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,pubspec);

@override
String toString() {
  return 'PackageLatestDto(version: $version, pubspec: $pubspec)';
}


}

/// @nodoc
abstract mixin class $PackageLatestDtoCopyWith<$Res>  {
  factory $PackageLatestDtoCopyWith(PackageLatestDto value, $Res Function(PackageLatestDto) _then) = _$PackageLatestDtoCopyWithImpl;
@useResult
$Res call({
 String version, PackagePubspecDto pubspec
});


$PackagePubspecDtoCopyWith<$Res> get pubspec;

}
/// @nodoc
class _$PackageLatestDtoCopyWithImpl<$Res>
    implements $PackageLatestDtoCopyWith<$Res> {
  _$PackageLatestDtoCopyWithImpl(this._self, this._then);

  final PackageLatestDto _self;
  final $Res Function(PackageLatestDto) _then;

/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? pubspec = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,pubspec: null == pubspec ? _self.pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as PackagePubspecDto,
  ));
}
/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePubspecDtoCopyWith<$Res> get pubspec {
  
  return $PackagePubspecDtoCopyWith<$Res>(_self.pubspec, (value) {
    return _then(_self.copyWith(pubspec: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackageLatestDto].
extension PackageLatestDtoPatterns on PackageLatestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageLatestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageLatestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageLatestDto value)  $default,){
final _that = this;
switch (_that) {
case _PackageLatestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageLatestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PackageLatestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  PackagePubspecDto pubspec)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageLatestDto() when $default != null:
return $default(_that.version,_that.pubspec);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  PackagePubspecDto pubspec)  $default,) {final _that = this;
switch (_that) {
case _PackageLatestDto():
return $default(_that.version,_that.pubspec);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  PackagePubspecDto pubspec)?  $default,) {final _that = this;
switch (_that) {
case _PackageLatestDto() when $default != null:
return $default(_that.version,_that.pubspec);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageLatestDto implements PackageLatestDto {
  const _PackageLatestDto({required this.version, required this.pubspec});
  factory _PackageLatestDto.fromJson(Map<String, dynamic> json) => _$PackageLatestDtoFromJson(json);

@override final  String version;
@override final  PackagePubspecDto pubspec;

/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageLatestDtoCopyWith<_PackageLatestDto> get copyWith => __$PackageLatestDtoCopyWithImpl<_PackageLatestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageLatestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageLatestDto&&(identical(other.version, version) || other.version == version)&&(identical(other.pubspec, pubspec) || other.pubspec == pubspec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,pubspec);

@override
String toString() {
  return 'PackageLatestDto(version: $version, pubspec: $pubspec)';
}


}

/// @nodoc
abstract mixin class _$PackageLatestDtoCopyWith<$Res> implements $PackageLatestDtoCopyWith<$Res> {
  factory _$PackageLatestDtoCopyWith(_PackageLatestDto value, $Res Function(_PackageLatestDto) _then) = __$PackageLatestDtoCopyWithImpl;
@override @useResult
$Res call({
 String version, PackagePubspecDto pubspec
});


@override $PackagePubspecDtoCopyWith<$Res> get pubspec;

}
/// @nodoc
class __$PackageLatestDtoCopyWithImpl<$Res>
    implements _$PackageLatestDtoCopyWith<$Res> {
  __$PackageLatestDtoCopyWithImpl(this._self, this._then);

  final _PackageLatestDto _self;
  final $Res Function(_PackageLatestDto) _then;

/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? pubspec = null,}) {
  return _then(_PackageLatestDto(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,pubspec: null == pubspec ? _self.pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as PackagePubspecDto,
  ));
}

/// Create a copy of PackageLatestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePubspecDtoCopyWith<$Res> get pubspec {
  
  return $PackagePubspecDtoCopyWith<$Res>(_self.pubspec, (value) {
    return _then(_self.copyWith(pubspec: value));
  });
}
}


/// @nodoc
mixin _$PackagePubspecDto {

 String get description;
/// Create a copy of PackagePubspecDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackagePubspecDtoCopyWith<PackagePubspecDto> get copyWith => _$PackagePubspecDtoCopyWithImpl<PackagePubspecDto>(this as PackagePubspecDto, _$identity);

  /// Serializes this PackagePubspecDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackagePubspecDto&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'PackagePubspecDto(description: $description)';
}


}

/// @nodoc
abstract mixin class $PackagePubspecDtoCopyWith<$Res>  {
  factory $PackagePubspecDtoCopyWith(PackagePubspecDto value, $Res Function(PackagePubspecDto) _then) = _$PackagePubspecDtoCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$PackagePubspecDtoCopyWithImpl<$Res>
    implements $PackagePubspecDtoCopyWith<$Res> {
  _$PackagePubspecDtoCopyWithImpl(this._self, this._then);

  final PackagePubspecDto _self;
  final $Res Function(PackagePubspecDto) _then;

/// Create a copy of PackagePubspecDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackagePubspecDto].
extension PackagePubspecDtoPatterns on PackagePubspecDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackagePubspecDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackagePubspecDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackagePubspecDto value)  $default,){
final _that = this;
switch (_that) {
case _PackagePubspecDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackagePubspecDto value)?  $default,){
final _that = this;
switch (_that) {
case _PackagePubspecDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackagePubspecDto() when $default != null:
return $default(_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description)  $default,) {final _that = this;
switch (_that) {
case _PackagePubspecDto():
return $default(_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description)?  $default,) {final _that = this;
switch (_that) {
case _PackagePubspecDto() when $default != null:
return $default(_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackagePubspecDto implements PackagePubspecDto {
  const _PackagePubspecDto({required this.description});
  factory _PackagePubspecDto.fromJson(Map<String, dynamic> json) => _$PackagePubspecDtoFromJson(json);

@override final  String description;

/// Create a copy of PackagePubspecDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackagePubspecDtoCopyWith<_PackagePubspecDto> get copyWith => __$PackagePubspecDtoCopyWithImpl<_PackagePubspecDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackagePubspecDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackagePubspecDto&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'PackagePubspecDto(description: $description)';
}


}

/// @nodoc
abstract mixin class _$PackagePubspecDtoCopyWith<$Res> implements $PackagePubspecDtoCopyWith<$Res> {
  factory _$PackagePubspecDtoCopyWith(_PackagePubspecDto value, $Res Function(_PackagePubspecDto) _then) = __$PackagePubspecDtoCopyWithImpl;
@override @useResult
$Res call({
 String description
});




}
/// @nodoc
class __$PackagePubspecDtoCopyWithImpl<$Res>
    implements _$PackagePubspecDtoCopyWith<$Res> {
  __$PackagePubspecDtoCopyWithImpl(this._self, this._then);

  final _PackagePubspecDto _self;
  final $Res Function(_PackagePubspecDto) _then;

/// Create a copy of PackagePubspecDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_PackagePubspecDto(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
