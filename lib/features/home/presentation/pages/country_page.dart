import 'package:countries_app/features/home/domain/usecases/number_formatter.dart';
import 'package:countries_app/features/home/presentation/bloc/single_country_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key, required this.name, required this.cca2});
  final String name;
  final String cca2;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  final formatter = NumberFormat('#,###');

  @override
  void initState() {
    super.initState();
    context.read<SingleCountryCubit>().fetchOneCountry(widget.cca2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        title: Text(
          widget.name,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 19,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<SingleCountryCubit, SingleCountryState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              success: (country) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(8),
                      child: Hero(
                        tag: country.name,
                        child: Image.network(country.flag, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 15,
                      bottom: 20,
                    ),
                    child: Text(
                      'Key Statistics',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  eachStatistic(
                    context,
                    'Area',
                    '${formatter.format(country.area)} sq km',
                  ),
                  eachStatistic(
                    context,
                    'Population',
                    customNumberFormatFull(country.population),
                  ),
                  eachStatistic(context, 'Region', country.region),
                  eachStatistic(context, 'Sub Region', country.subregion),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 15,
                      bottom: 20,
                    ),
                    child: Text(
                      'Time Zone',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      children: country.timezones
                          .map(
                            (e) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              margin: EdgeInsets.only(right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
              error: (message) => Column(
                children: [
                  Center(child: Text(message)),
                  TextButton(
                    onPressed: () => context
                        .read<SingleCountryCubit>()
                        .fetchOneCountry(widget.cca2),
                    child: Text(
                      'Retry',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget eachStatistic(BuildContext context, String title, String value) {
  return ListTile(
    minTileHeight: 20,
    title: Text(
      title,
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
    ),
    trailing: Text(
      value,
      style: TextStyle(
        fontSize: 15,
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  );
}
