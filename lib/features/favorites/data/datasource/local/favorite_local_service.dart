import 'package:hive/hive.dart';
import '../../models/country_hive_model.dart';

class FavoriteLocalService {
  final Box<CountryHiveModel> box = Hive.box<CountryHiveModel>('favorites');

  Future<void> addFavorite(CountryHiveModel country) async {
    await box.put(country.cca2, country);
  }

  Future<void> removeFavorite(String cca2) async {
    await box.delete(cca2);
  }

  bool isFavorite(String cca2) {
    return box.containsKey(cca2);
  }

  List<CountryHiveModel> getFavorites() {
    return box.values.toList();
  }
}
