import 'dart:async';

import 'package:countries_app/features/home/domain/entity/country.dart';
import 'package:countries_app/features/home/domain/usecases/get_one_country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'single_country_state.dart';
part 'single_country_cubit.freezed.dart';

class SingleCountryCubit extends Cubit<SingleCountryState> {
  final GetOneCountry getOneCountry;

  SingleCountryCubit({required this.getOneCountry})
    : super(const SingleCountryState.loading());

  Future<void> fetchOneCountry(String cca2) async {
    emit(const SingleCountryState.loading());

    try {
      final country = await getOneCountry(cca2);
      emit(SingleCountryState.success(country));
    } catch (e) {
      emit(const SingleCountryState.error('Failed to fetch country'));
    }
  }
}
