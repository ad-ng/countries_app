import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../favorites/data/models/country_hive_model.dart';
import '../../../favorites/domain/repository/favorite_repository.dart';

class FavoritesCubit extends Cubit<List<CountryHiveModel>> {
  final FavoriteRepository repository;

  FavoritesCubit(this.repository) : super([]) {
    loadFavorites();
  }

  void loadFavorites() {
    emit(repository.getFavorites());
  }

  Future<void> toggleFavorite(CountryHiveModel country) async {
    if (repository.isFavorite(country.cca2)) {
      await repository.removeFromFavorites(country.cca2);
    } else {
      await repository.addToFavorites(country);
    }
    loadFavorites();
  }

  bool isFavorite(String code) => repository.isFavorite(code);
}
