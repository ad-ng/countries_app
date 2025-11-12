// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountrySummaryModelImpl _$$CountrySummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountrySummaryModelImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      cca2: json['cca2'] as String?,
      population: (json['population'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountrySummaryModelImplToJson(
        _$CountrySummaryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'cca2': instance.cca2,
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
