import 'package:flutter/material.dart';
import 'package:islami_app/constants.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: kDarkColor,
      ),
    ),
  );
}
