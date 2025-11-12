part of 'single_country_cubit.dart';

@freezed
sealed class SingleCountryState with _$SingleCountryState {
  const factory SingleCountryState.loading() = _Loading;
  const factory SingleCountryState.success(CountryDetails country) = _Success;
  const factory SingleCountryState.error(String message) = _Error;
}
