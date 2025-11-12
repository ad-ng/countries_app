import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/favorites/presentation/components/favorites_card.dart';
import 'package:countries_app/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:countries_app/shared/components/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<FavoritesCubit, List<CountryHiveModel>>(
              builder: (context, favorites) {
                if (favorites.isEmpty) {
                  return Center(
                    child: Text(
                      "No favorites yet",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final country = favorites[index];
                    return favoritesCard(context, country);
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: customBottomNav(context, 1),
    );
  }
}
