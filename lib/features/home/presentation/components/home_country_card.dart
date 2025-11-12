import 'package:cached_network_image/cached_network_image.dart';
import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:countries_app/features/home/domain/entity/country_summary.dart';
import 'package:countries_app/features/home/domain/usecases/number_formatter.dart';
import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Widget homeCountryCard(BuildContext context, CountrySummary currentCountry) {
  return RefreshIndicator(
    onRefresh: () {
      return BlocProvider.of<CountryCubit>(context).loadCountries();
    },
    child: ListTile(
      leading: SizedBox(
        width: 100,
        height: 80,
        child: Hero(
          tag: currentCountry.name,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: CachedNetworkImage(
              imageUrl: currentCountry.flag,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.flag),
            ),
          ),
        ),
      ),
      title: Text(
        currentCountry.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      subtitle: Text(
        'Population: ${customNumberFormat(currentCountry.population)} ',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      trailing: BlocBuilder<FavoritesCubit, List<CountryHiveModel>>(
        builder: (context, favorites) {
          final isFav = favorites.any((e) => e.cca2 == currentCountry.cca2);
          return IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: () {
              context.read<FavoritesCubit>().toggleFavorite(
                CountryHiveModel(
                  cca2: currentCountry.cca2,
                  commonName: currentCountry.name,
                  flagPng: currentCountry.flag,
                ),
              );
            },
          );
        },
      ),
      onTap: () => context.pushNamed(
        'countryPage',
        extra: CountryPage(
          name: currentCountry.name,
          cca2: currentCountry.cca2,
        ),
      ),
    ),
  );
}
