import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';

abstract class FavoriteRepository {
  Future<void> addToFavorites(CountryHiveModel country);
  Future<void> removeFromFavorites(String cca2);
  bool isFavorite(String cca2);
  List<CountryHiveModel> getFavorites();
}
