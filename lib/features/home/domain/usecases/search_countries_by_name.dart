import 'package:countries_app/features/home/domain/entity/country_summary.dart';
import 'package:countries_app/features/home/domain/repository/country_repository.dart';

class SearchCountriesByName {
  final CountryRepository repository;

  SearchCountriesByName(this.repository);

  Future<List<CountrySummary>> call(String searchQuery) async {
    return await repository.searchCountries(searchQuery);
  }
}
