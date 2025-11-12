import 'package:countries_app/features/home/data/models/country_summary_hive_model.dart';
import 'package:hive/hive.dart';

class CountryHiveService {
  final Box<CountrySummaryHiveModel> box = Hive.box<CountrySummaryHiveModel>(
    'local_countries',
  );

  Future<void> saveCountries(List<CountrySummaryHiveModel> countries) async {
    await box.clear();
    await box.addAll(countries);
  }
}
