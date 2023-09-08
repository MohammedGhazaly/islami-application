import 'package:flutter/material.dart';
import 'package:islami_app/constants.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kPrimaryLightColor,
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
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: kDarkColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kPrimaryLightColor,
      selectedItemColor: kDarkColor,
      unselectedItemColor: kWhiteColor,
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
      unselectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
  );
}
