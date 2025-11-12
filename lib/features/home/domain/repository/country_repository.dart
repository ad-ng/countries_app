import 'package:countries_app/features/home/domain/entity/country_details.dart';
import 'package:countries_app/features/home/domain/entity/country_summary.dart';

abstract class CountryRepository {
  Future<List<CountrySummary>> getAllCountries();
  Future<List<CountrySummary>> searchCountries(String searchQuery);
  Future<CountryDetails> fetchOneCountryByCca2(String cca2);
}
