import 'package:countries_app/features/home/domain/entity/country.dart';
import 'package:countries_app/features/home/domain/repository/country_repository.dart';

class GetAllCountries {
  final CountryRepository repository;

  GetAllCountries(this.repository);

  Future<List<Country>> call() async {
    return await repository.getAllCountries();
  }
}
