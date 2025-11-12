import 'package:countries_app/features/home/domain/entity/country_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_summary_model.freezed.dart';
part 'country_summary_model.g.dart';

@Freezed()
sealed class CountrySummaryModel with _$CountrySummaryModel {
  const factory CountrySummaryModel({
    required Name name,
    required Flags flags,
    String? cca2,
    int? population,
  }) = _CountrySummaryModel;

  factory CountrySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CountrySummaryModelFromJson(json);
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

extension CountrySummaryMapper on CountrySummaryModel {
  CountrySummary toEntity() => CountrySummary(
    name: name.common!,
    flag: flags.png!,
    cca2: cca2!,
    population: population!,
  );
}
