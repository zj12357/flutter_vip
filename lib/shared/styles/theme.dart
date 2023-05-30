import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blue,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.red, fontSize: 18),
    bodyMedium: TextStyle(color: Colors.green, fontSize: 20),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
);
