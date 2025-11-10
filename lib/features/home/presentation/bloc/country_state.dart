part of 'country_cubit.dart';

@freezed
sealed class CountryState with _$CountryState {
  const factory CountryState.loading() = _Loading;
  const factory CountryState.success(List<Country> countries) = _Success;
  const factory CountryState.error(String message) = _Error;
}


