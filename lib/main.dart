import 'package:countries_app/core/dio_service.dart';
import 'package:countries_app/features/favorites/data/datasource/local/favorite_local_service.dart';
import 'package:countries_app/features/favorites/data/repository/favorite_repository_impl.dart';
import 'package:countries_app/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:countries_app/features/favorites/presentation/page/favorite_page.dart';
import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/home/data/models/country_summary_hive_model.dart';
import 'package:countries_app/features/home/data/repository/country_repository_impl.dart';
import 'package:countries_app/features/home/domain/usecases/get_all_countries.dart';
import 'package:countries_app/features/home/domain/usecases/get_one_country.dart';
import 'package:countries_app/features/home/domain/usecases/search_countries_by_name.dart';
import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:countries_app/features/home/presentation/bloc/single_country_cubit.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:countries_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  DioService.instance.setup();

  await Hive.initFlutter();

  Hive.registerAdapter(CountryHiveModelAdapter());
  Hive.registerAdapter(CountrySummaryHiveModelAdapter());

  await Hive.openBox<CountryHiveModel>('favorites');
  await Hive.openBox<CountryHiveModel>('local_countries');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final countryRepo = CountryRepositoryImpl(CountryApiService());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CountryCubit(
            getAllCountries: GetAllCountries(countryRepo),
            searchCountriesByName: SearchCountriesByName(countryRepo),
          ),
        ),
        BlocProvider(
          create: (context) =>
              SingleCountryCubit(getOneCountry: GetOneCountry(countryRepo)),
        ),
        BlocProvider(
          create: (context) =>
              FavoritesCubit(FavoriteRepositoryImpl(FavoriteLocalService())),
        ),
      ],
      child: MaterialApp.router(
        title: 'Countries App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.black)),
        routerConfig: routes,
      ),
    );
  }
}

final GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/countryPage',
      name: 'countryPage',
      builder: (context, state) {
        final args = state.extra! as CountryPage;
        return CountryPage(cca2: args.cca2, name: args.name);
      },
    ),
    GoRoute(
      path: '/favorites',
      name: 'favorite',
      builder: (context, state) => const FavoritePage(),
    ),
  ],
);
