import 'package:countries_app/features/home/domain/entity/country_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_details_model.freezed.dart';
part 'country_details_model.g.dart';

@Freezed()
sealed class CountryDetailsModel with _$CountryDetailsModel {
  const factory CountryDetailsModel({
    required Name name,
    required Flags flags,
    List<String>? capital,
    String? region,
    String? subregion,
    double? area,
    List<String>? timezones,
    int? population,
  }) = _CountryDetailsModel;

  factory CountryDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailsModelFromJson(json);
}

@Freezed()
sealed class Name with _$Name {
  const factory Name({String? common}) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@Freezed()
sealed class Flags with _$Flags {
  const factory Flags({String? png, String? svg}) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}

extension CountryDetailsMapper on CountryDetailsModel {
  CountryDetails toEntity() => CountryDetails(
    name: name.common!,
    flag: flags.png!,
    capital: capital!,
    region: region!,
    subregion: subregion!,
    area: area!,
    timezones: timezones!,
    population: population!,
  );
}
