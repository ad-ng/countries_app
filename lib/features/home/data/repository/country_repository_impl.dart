import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/home/data/models/country_model.dart';
import 'package:countries_app/features/home/domain/entity/country.dart';
import 'package:countries_app/features/home/domain/repository/country_repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryApiService countryApiService;

  CountryRepositoryImpl(this.countryApiService);

  @override
  Future<List<Country>> getAllCountries() async {
    final models = await countryApiService.fetchAllCountries();
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<Country>> searchCountries(searchQuery) async {
    final models = await countryApiService.searchCountries(searchQuery);
    return models.map((m) => m.toEntity()).toList();
  }
}
