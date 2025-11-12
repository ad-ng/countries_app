import 'package:countries_app/core/dio_service.dart';
import 'package:countries_app/core/routes/routes.dart';
import 'package:countries_app/core/theme/app_theme.dart';
import 'package:countries_app/core/theme/theme_cubit.dart';
import 'package:countries_app/features/favorites/data/datasource/local/favorite_local_service.dart';
import 'package:countries_app/features/favorites/data/repository/favorite_repository_impl.dart';
import 'package:countries_app/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:countries_app/features/home/data/datasources/local/country_hive_service.dart';
import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/favorites/data/models/country_hive_model.dart';
import 'package:countries_app/features/home/data/models/country_summary_hive_model.dart';
import 'package:countries_app/features/home/data/repository/country_repository_impl.dart';
import 'package:countries_app/features/home/domain/usecases/get_all_countries.dart';
import 'package:countries_app/features/home/domain/usecases/get_one_country.dart';
import 'package:countries_app/features/home/domain/usecases/search_countries_by_name.dart';
import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:countries_app/features/home/presentation/bloc/single_country_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initApp() async {
  await dotenv.load(fileName: '.env');
  DioService.instance.setup();

  await Hive.initFlutter();
  Hive.registerAdapter(CountryHiveModelAdapter());
  Hive.registerAdapter(CountrySummaryHiveModelAdapter());
  await Hive.openBox<CountryHiveModel>('favorites');
  await Hive.openBox<CountrySummaryHiveModel>('local_countries');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final countryRepo = CountryRepositoryImpl(
      CountryApiService(),
      CountryHiveService(),
    );

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
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            title: 'Countries App',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeMode,
            routerConfig: routes,
          );
        },
      ),
    );
  }
}
