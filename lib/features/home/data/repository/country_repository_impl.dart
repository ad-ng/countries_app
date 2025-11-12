import 'package:countries_app/features/home/data/datasources/local/country_hive_service.dart';
import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/home/data/models/country_details_model.dart';
import 'package:countries_app/features/home/data/models/country_summary_hive_model.dart';
import 'package:countries_app/features/home/data/models/country_summary_model.dart';
import 'package:countries_app/features/home/domain/entity/country_details.dart';
import 'package:countries_app/features/home/domain/entity/country_summary.dart';
import 'package:countries_app/features/home/domain/repository/country_repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryApiService countryApiService;
  final CountryHiveService countryHiveService;

  CountryRepositoryImpl(this.countryApiService, this.countryHiveService);

  @override
  Future<List<CountrySummary>> getAllCountries() async {
    try {
      // Try API first
      final models = await countryApiService.fetchAllCountries();

      // Save to Hive
      final hiveModels = models
          .map((m) => CountrySummaryHiveModel.fromEntity(m.toEntity()))
          .toList();

      await countryHiveService.saveCountries(hiveModels);

      return models.map((m) => m.toEntity()).toList();
    } catch (_) {
      final localData = countryHiveService.getCountries();

      return localData.map((hive) => hive.toEntity()).toList();
    }
  }

  @override
  Future<List<CountrySummary>> searchCountries(String query) async {
    try {
      final models = await countryApiService.searchCountries(query);
      return models.map((m) => m.toEntity()).toList();
    } catch (_) {
      final localData = countryHiveService.getCountries();
      return localData
          .where((e) => e.name.toLowerCase().contains(query.toLowerCase()))
          .map((e) => e.toEntity())
          .toList();
    }
  }

  @override
  Future<CountryDetails> fetchOneCountryByCca2(String cca2) async {
    final model = await countryApiService.fetchOneCountryByCca2(cca2);
    return model.toEntity();
  }
}
