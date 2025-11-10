import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/favorites/data/datasource/local/favorite_local_service.dart';
import 'package:countries_app/features/favorites/domain/repository/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteLocalService localService;

  FavoriteRepositoryImpl(this.localService);

  @override
  Future<void> addToFavorites(CountryHiveModel country) =>
      localService.addFavorite(country);

  @override
  Future<void> removeFromFavorites(String cca2) =>
      localService.removeFavorite(cca2);

  @override
  bool isFavorite(String cca2) => localService.isFavorite(cca2);

  @override
  List<CountryHiveModel> getFavorites() => localService.getFavorites();
}
