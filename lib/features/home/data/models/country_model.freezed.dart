// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  Name get name => throw _privateConstructorUsedError;
  Flags get flags => throw _privateConstructorUsedError;
  List<String>? get capital => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get subregion => throw _privateConstructorUsedError;
  double? get area => throw _privateConstructorUsedError;
  List<String>? get timezones => throw _privateConstructorUsedError;
  String? get cca2 => throw _privateConstructorUsedError;
  int? get population => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {Name name,
      Flags flags,
      List<String>? capital,
      String? region,
      String? subregion,
      double? area,
      List<String>? timezones,
      String? cca2,
      int? population});

  $NameCopyWith<$Res> get name;
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
    Object? capital = freezed,
    Object? region = freezed,
    Object? subregion = freezed,
    Object? area = freezed,
    Object? timezones = freezed,
    Object? cca2 = freezed,
    Object? population = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      subregion: freezed == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      timezones: freezed == timezones
          ? _value.timezones
          : timezones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cca2: freezed == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res> get flags {
    return $FlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      Flags flags,
      List<String>? capital,
      String? region,
      String? subregion,
      double? area,
      List<String>? timezones,
      String? cca2,
      int? population});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
    Object? capital = freezed,
    Object? region = freezed,
    Object? subregion = freezed,
    Object? area = freezed,
    Object? timezones = freezed,
    Object? cca2 = freezed,
    Object? population = freezed,
  }) {
    return _then(_$CountryModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      capital: freezed == capital
          ? _value._capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      subregion: freezed == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      timezones: freezed == timezones
          ? _value._timezones
          : timezones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cca2: freezed == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl(
      {required this.name,
      required this.flags,
      final List<String>? capital,
      this.region,
      this.subregion,
      this.area,
      final List<String>? timezones,
      this.cca2,
      this.population})
      : _capital = capital,
        _timezones = timezones;

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final Name name;
  @override
  final Flags flags;
  final List<String>? _capital;
  @override
  List<String>? get capital {
    final value = _capital;
    if (value == null) return null;
    if (_capital is EqualUnmodifiableListView) return _capital;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? region;
  @override
  final String? subregion;
  @override
  final double? area;
  final List<String>? _timezones;
  @override
  List<String>? get timezones {
    final value = _timezones;
    if (value == null) return null;
    if (_timezones is EqualUnmodifiableListView) return _timezones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cca2;
  @override
  final int? population;

  @override
  String toString() {
    return 'CountryModel(name: $name, flags: $flags, capital: $capital, region: $region, subregion: $subregion, area: $area, timezones: $timezones, cca2: $cca2, population: $population)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            const DeepCollectionEquality().equals(other._capital, _capital) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.subregion, subregion) ||
                other.subregion == subregion) &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality()
                .equals(other._timezones, _timezones) &&
            (identical(other.cca2, cca2) || other.cca2 == cca2) &&
            (identical(other.population, population) ||
                other.population == population));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      flags,
      const DeepCollectionEquality().hash(_capital),
      region,
      subregion,
      area,
      const DeepCollectionEquality().hash(_timezones),
      cca2,
      population);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {required final Name name,
      required final Flags flags,
      final List<String>? capital,
      final String? region,
      final String? subregion,
      final double? area,
      final List<String>? timezones,
      final String? cca2,
      final int? population}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  Name get name;
  @override
  Flags get flags;
  @override
  List<String>? get capital;
  @override
  String? get region;
  @override
  String? get subregion;
  @override
  double? get area;
  @override
  List<String>? get timezones;
  @override
  String? get cca2;
  @override
  int? get population;
  @override
  @JsonKey(ignore: true)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String? get common => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String? common});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = freezed,
  }) {
    return _then(_value.copyWith(
      common: freezed == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? common});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = freezed,
  }) {
    return _then(_$NameImpl(
      common: freezed == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  const _$NameImpl({this.common});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String? common;

  @override
  String toString() {
    return 'Name(common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, common);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name({final String? common}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String? get common;
  @override
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  String? get png => throw _privateConstructorUsedError;
  String? get svg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call({String? png, String? svg});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? svg = freezed,
  }) {
    return _then(_value.copyWith(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagsImplCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$FlagsImplCopyWith(
          _$FlagsImpl value, $Res Function(_$FlagsImpl) then) =
      __$$FlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? png, String? svg});
}

/// @nodoc
class __$$FlagsImplCopyWithImpl<$Res>
    extends _$FlagsCopyWithImpl<$Res, _$FlagsImpl>
    implements _$$FlagsImplCopyWith<$Res> {
  __$$FlagsImplCopyWithImpl(
      _$FlagsImpl _value, $Res Function(_$FlagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
    Object? svg = freezed,
  }) {
    return _then(_$FlagsImpl(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsImpl implements _Flags {
  const _$FlagsImpl({this.png, this.svg});

  factory _$FlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsImplFromJson(json);

  @override
  final String? png;
  @override
  final String? svg;

  @override
  String toString() {
    return 'Flags(png: $png, svg: $svg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, png, svg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      __$$FlagsImplCopyWithImpl<_$FlagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsImplToJson(
      this,
    );
  }
}

abstract class _Flags implements Flags {
  const factory _Flags({final String? png, final String? svg}) = _$FlagsImpl;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$FlagsImpl.fromJson;

  @override
  String? get png;
  @override
  String? get svg;
  @override
  @JsonKey(ignore: true)
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
