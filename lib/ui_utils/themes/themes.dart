import 'package:flutter/material.dart';

abstract class AppTheme {
  ThemeData buildTheme();

  AppBarTheme buildAppBarTheme();

  TextTheme buildTextTheme();

  ElevatedButtonThemeData buildElevatedButtonTheme();

  ColorScheme buildColorScheme();
}
