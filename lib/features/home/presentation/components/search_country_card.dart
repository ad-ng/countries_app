import 'package:countries_app/features/home/domain/entity/country_summary.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget searchCountryCard(BuildContext context, CountrySummary currentCountry) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: ListTile(
      leading: SizedBox(
        width: 100,
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(9),
          child: Image.network(currentCountry.flag, fit: BoxFit.cover),
        ),
      ),
      title: Text(
        currentCountry.name,
        style: TextStyle(fontWeight: FontWeight.w500),
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
