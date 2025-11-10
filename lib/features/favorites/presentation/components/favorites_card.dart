import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Widget favoritesCard(BuildContext context, CountryHiveModel currentCountry) {
  return ListTile(
    leading: SizedBox(
      width: 100,
      height: 80,
      child: Hero(
        tag: currentCountry.commonName,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(9),
          child: Image.network(currentCountry.flagPng, fit: BoxFit.cover),
        ),
      ),
    ),
    title: Text(
      currentCountry.commonName,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      'Capital: ${currentCountry.capital}',
      style: TextStyle(fontSize: 16, color: Colors.grey),
    ),
    trailing: IconButton(
      icon: Icon(
        context.read<FavoritesCubit>().isFavorite(currentCountry.cca2)
            ? Icons.favorite
            : Icons.favorite_border,
        color: Colors.black,
      ),
      onPressed: () {
        context.read<FavoritesCubit>().toggleFavorite(
          CountryHiveModel(
            cca2: currentCountry.cca2,
            commonName: currentCountry.commonName,
            flagPng: currentCountry.flagPng,
          ),
        );
      },
    ),
    onTap: () => context.pushNamed(
      'countryPage',
      extra: CountryPage(
        name: currentCountry.commonName,
        cca2: currentCountry.cca2,
      ),
    ),
  );
}
