import 'package:countries_app/core/dio_service.dart';
import 'package:countries_app/features/favorites/presentation/page/favorite_page.dart';
import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:countries_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioService.instance.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Countries App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.black)),
      routerConfig: routes,
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
