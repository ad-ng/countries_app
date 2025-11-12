import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      primary: Colors.black,
      secondary: Colors.white,
      background: Colors.white,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      primary: Colors.white,
      secondary: Colors.black,
      background: Colors.black,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
