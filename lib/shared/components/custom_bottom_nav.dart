import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget customBottomNav(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    currentIndex: currentIndex,
    selectedItemColor: Theme.of(context).colorScheme.secondary,
    unselectedItemColor: Colors.grey,
    onTap: (value) {
      value == 0 ? context.goNamed('/') : context.goNamed('favorite');
    },
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border),
        label: 'Favorite',
      ),
    ],
  );
}
