// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryModel {

 Name get name; Flags get flags; List<String>? get capital; String get region; String? get subregion; double? get area; List<String>? get timezones; int? get population;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.flags, flags) || other.flags == flags)&&const DeepCollectionEquality().equals(other.capital, capital)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other.timezones, timezones)&&(identical(other.population, population) || other.population == population));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flags,const DeepCollectionEquality().hash(capital),region,subregion,area,const DeepCollectionEquality().hash(timezones),population);

@override
String toString() {
  return 'CountryModel(name: $name, flags: $flags, capital: $capital, region: $region, subregion: $subregion, area: $area, timezones: $timezones, population: $population)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
 Name name, Flags flags, List<String>? capital, String region, String? subregion, double? area, List<String>? timezones, int? population
});


$NameCopyWith<$Res> get name;$FlagsCopyWith<$Res> get flags;

}
/// @nodoc
class _$CountryModelCopyWithImpl<$Res>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? flags = null,Object? capital = freezed,Object? region = null,Object? subregion = freezed,Object? area = freezed,Object? timezones = freezed,Object? population = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as Flags,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as double?,timezones: freezed == timezones ? _self.timezones : timezones // ignore: cast_nullable_to_non_nullable
as List<String>?,population: freezed == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsCopyWith<$Res> get flags {
  
  return $FlagsCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountryModel].
extension CountryModelPatterns on CountryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Name name,  Flags flags,  List<String>? capital,  String region,  String? subregion,  double? area,  List<String>? timezones,  int? population)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.name,_that.flags,_that.capital,_that.region,_that.subregion,_that.area,_that.timezones,_that.population);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Name name,  Flags flags,  List<String>? capital,  String region,  String? subregion,  double? area,  List<String>? timezones,  int? population)  $default,) {final _that = this;
switch (_that) {
case _CountryModel():
return $default(_that.name,_that.flags,_that.capital,_that.region,_that.subregion,_that.area,_that.timezones,_that.population);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Name name,  Flags flags,  List<String>? capital,  String region,  String? subregion,  double? area,  List<String>? timezones,  int? population)?  $default,) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.name,_that.flags,_that.capital,_that.region,_that.subregion,_that.area,_that.timezones,_that.population);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryModel implements CountryModel {
  const _CountryModel({required this.name, required this.flags, final  List<String>? capital, required this.region, this.subregion, this.area, final  List<String>? timezones, this.population}): _capital = capital,_timezones = timezones;
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

@override final  Name name;
@override final  Flags flags;
 final  List<String>? _capital;
@override List<String>? get capital {
  final value = _capital;
  if (value == null) return null;
  if (_capital is EqualUnmodifiableListView) return _capital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String region;
@override final  String? subregion;
@override final  double? area;
 final  List<String>? _timezones;
@override List<String>? get timezones {
  final value = _timezones;
  if (value == null) return null;
  if (_timezones is EqualUnmodifiableListView) return _timezones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? population;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryModelCopyWith<_CountryModel> get copyWith => __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.flags, flags) || other.flags == flags)&&const DeepCollectionEquality().equals(other._capital, _capital)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other._timezones, _timezones)&&(identical(other.population, population) || other.population == population));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flags,const DeepCollectionEquality().hash(_capital),region,subregion,area,const DeepCollectionEquality().hash(_timezones),population);

@override
String toString() {
  return 'CountryModel(name: $name, flags: $flags, capital: $capital, region: $region, subregion: $subregion, area: $area, timezones: $timezones, population: $population)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
 Name name, Flags flags, List<String>? capital, String region, String? subregion, double? area, List<String>? timezones, int? population
});


@override $NameCopyWith<$Res> get name;@override $FlagsCopyWith<$Res> get flags;

}
/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? flags = null,Object? capital = freezed,Object? region = null,Object? subregion = freezed,Object? area = freezed,Object? timezones = freezed,Object? population = freezed,}) {
  return _then(_CountryModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as Flags,capital: freezed == capital ? _self._capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as double?,timezones: freezed == timezones ? _self._timezones : timezones // ignore: cast_nullable_to_non_nullable
as List<String>?,population: freezed == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsCopyWith<$Res> get flags {
  
  return $FlagsCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}


/// @nodoc
mixin _$Name {

 String get common;
/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameCopyWith<Name> get copyWith => _$NameCopyWithImpl<Name>(this as Name, _$identity);

  /// Serializes this Name to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Name&&(identical(other.common, common) || other.common == common));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common);

@override
String toString() {
  return 'Name(common: $common)';
}


}

/// @nodoc
abstract mixin class $NameCopyWith<$Res>  {
  factory $NameCopyWith(Name value, $Res Function(Name) _then) = _$NameCopyWithImpl;
@useResult
$Res call({
 String common
});




}
/// @nodoc
class _$NameCopyWithImpl<$Res>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._self, this._then);

  final Name _self;
  final $Res Function(Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? common = null,}) {
  return _then(_self.copyWith(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Name].
extension NamePatterns on Name {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Name value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Name() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Name value)  $default,){
final _that = this;
switch (_that) {
case _Name():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Name value)?  $default,){
final _that = this;
switch (_that) {
case _Name() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String common)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Name() when $default != null:
return $default(_that.common);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String common)  $default,) {final _that = this;
switch (_that) {
case _Name():
return $default(_that.common);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String common)?  $default,) {final _that = this;
switch (_that) {
case _Name() when $default != null:
return $default(_that.common);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Name implements Name {
  const _Name({required this.common});
  factory _Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

@override final  String common;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.common, common) || other.common == common));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common);

@override
String toString() {
  return 'Name(common: $common)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@override @useResult
$Res call({
 String common
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? common = null,}) {
  return _then(_Name(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Flags {

 String get png; String get svg;
/// Create a copy of Flags
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlagsCopyWith<Flags> get copyWith => _$FlagsCopyWithImpl<Flags>(this as Flags, _$identity);

  /// Serializes this Flags to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flags&&(identical(other.png, png) || other.png == png)&&(identical(other.svg, svg) || other.svg == svg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,png,svg);

@override
String toString() {
  return 'Flags(png: $png, svg: $svg)';
}


}

/// @nodoc
abstract mixin class $FlagsCopyWith<$Res>  {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) _then) = _$FlagsCopyWithImpl;
@useResult
$Res call({
 String png, String svg
});




}
/// @nodoc
class _$FlagsCopyWithImpl<$Res>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._self, this._then);

  final Flags _self;
  final $Res Function(Flags) _then;

/// Create a copy of Flags
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? png = null,Object? svg = null,}) {
  return _then(_self.copyWith(
png: null == png ? _self.png : png // ignore: cast_nullable_to_non_nullable
as String,svg: null == svg ? _self.svg : svg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Flags].
extension FlagsPatterns on Flags {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Flags value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Flags() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Flags value)  $default,){
final _that = this;
switch (_that) {
case _Flags():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Flags value)?  $default,){
final _that = this;
switch (_that) {
case _Flags() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String png,  String svg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Flags() when $default != null:
return $default(_that.png,_that.svg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String png,  String svg)  $default,) {final _that = this;
switch (_that) {
case _Flags():
return $default(_that.png,_that.svg);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String png,  String svg)?  $default,) {final _that = this;
switch (_that) {
case _Flags() when $default != null:
return $default(_that.png,_that.svg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Flags implements Flags {
  const _Flags({required this.png, required this.svg});
  factory _Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);

@override final  String png;
@override final  String svg;

/// Create a copy of Flags
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlagsCopyWith<_Flags> get copyWith => __$FlagsCopyWithImpl<_Flags>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlagsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flags&&(identical(other.png, png) || other.png == png)&&(identical(other.svg, svg) || other.svg == svg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,png,svg);

@override
String toString() {
  return 'Flags(png: $png, svg: $svg)';
}


}

/// @nodoc
abstract mixin class _$FlagsCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$FlagsCopyWith(_Flags value, $Res Function(_Flags) _then) = __$FlagsCopyWithImpl;
@override @useResult
$Res call({
 String png, String svg
});




}
/// @nodoc
class __$FlagsCopyWithImpl<$Res>
    implements _$FlagsCopyWith<$Res> {
  __$FlagsCopyWithImpl(this._self, this._then);

  final _Flags _self;
  final $Res Function(_Flags) _then;

/// Create a copy of Flags
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? png = null,Object? svg = null,}) {
  return _then(_Flags(
png: null == png ? _self.png : png // ignore: cast_nullable_to_non_nullable
as String,svg: null == svg ? _self.svg : svg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
