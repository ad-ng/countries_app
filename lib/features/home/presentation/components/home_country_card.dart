import 'package:countries_app/features/home/domain/entity/country.dart';
import 'package:countries_app/features/home/domain/usecases/number_formatter.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget homeCountryCard(BuildContext context, Country currentCountry) {
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
      'Population: ${customNumberFormat(currentCountry.population)} ',
      style: TextStyle(fontSize: 16, color: Colors.grey),
    ),
    trailing: Icon(Icons.favorite_border),
    onTap: () => context.pushNamed(
      'countryPage',
      extra: CountryPage(
        name: currentCountry.commonName,
        cca2: currentCountry.cca2!,
      ),
    ),
  );
}
