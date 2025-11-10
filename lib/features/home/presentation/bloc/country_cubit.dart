import 'dart:async';

import 'package:countries_app/features/home/domain/entity/country.dart';
import 'package:countries_app/features/home/domain/usecases/search_countries_by_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/usecases/get_all_countries.dart';

part 'country_state.dart';
part 'country_cubit.freezed.dart';

class CountryCubit extends Cubit<CountryState> {
  final GetAllCountries getAllCountries;
  final SearchCountriesByName searchCountriesByName;

  CountryCubit({
    required this.getAllCountries,
    required this.searchCountriesByName,
  }) : super(const CountryState.loading());

  Future<void> loadCountries() async {
    emit(const CountryState.loading());

    try {
      final countries = await getAllCountries();
      emit(CountryState.success(countries));
    } catch (e) {
      emit(const CountryState.error("Failed to load countries"));
    }
  }

  Future<void> searchCountries(String searchQuery) async {
    emit(const CountryState.loading());

    try {
      final countries = await searchCountriesByName(searchQuery);
      emit(CountryState.success(countries));
    } catch (e) {
      emit(const CountryState.error("Failed to load countries"));
    }
  }
}
