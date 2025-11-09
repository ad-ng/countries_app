// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      capital: (json['capital'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      area: (json['area'] as num?)?.toDouble(),
      timezones: (json['timezones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      population: (json['population'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
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

_Name _$NameFromJson(Map<String, dynamic> json) =>
    _Name(common: json['common'] as String?);

Map<String, dynamic> _$NameToJson(_Name instance) => <String, dynamic>{
  'common': instance.common,
};

_Flags _$FlagsFromJson(Map<String, dynamic> json) =>
    _Flags(png: json['png'] as String?, svg: json['svg'] as String?);

Map<String, dynamic> _$FlagsToJson(_Flags instance) => <String, dynamic>{
  'png': instance.png,
  'svg': instance.svg,
};
