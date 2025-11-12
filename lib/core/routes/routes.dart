import 'package:countries_app/features/home/presentation/pages/country_page.dart';
import 'package:countries_app/features/home/presentation/pages/home_page.dart';
import 'package:countries_app/features/favorites/presentation/page/favorite_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
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
