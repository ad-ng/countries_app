import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@Freezed()
sealed class CountryModel with _$CountryModel {
  const factory CountryModel({
    required Name name,
    required Flags flags,
    List<String>? capital,
    String? region,
    String? subregion,
    double? area,
    List<String>? timezones,
    int? population,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
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
