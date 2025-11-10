import 'package:countries_app/features/home/domain/entity/country.dart';

abstract class CountryRepository {
  Future<List<Country>> getAllCountries();
  Future<List<Country>> searchCountries(String searchQuery);
  Future<Country> fetchOneCountryByCca2(String cca2);
}
