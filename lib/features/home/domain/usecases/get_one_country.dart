import 'package:countries_app/features/home/domain/entity/country_details.dart';
import 'package:countries_app/features/home/domain/repository/country_repository.dart';

class GetOneCountry {
  final CountryRepository repository;

  GetOneCountry(this.repository);

  Future<CountryDetails> call(String cca2) async {
    return await repository.fetchOneCountryByCca2(cca2);
  }
}
