// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDetailsModelImpl _$$CountryDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryDetailsModelImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      area: (json['area'] as num?)?.toDouble(),
      timezones: (json['timezones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      population: (json['population'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountryDetailsModelImplToJson(
        _$CountryDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'capital': instance.capital,
      'region': instance.region,
      'subregion': instance.subregion,
      'area': instance.area,
      'timezones': instance.timezones,
      'population': instance.population,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      common: json['common'] as String?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
    };

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
      png: json['png'] as String?,
      svg: json['svg'] as String?,
    );

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
    };
