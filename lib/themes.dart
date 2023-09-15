import 'package:flutter/material.dart';
import 'package:islami_app/constants.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: kWhiteColor,
    ),
    primaryColor: kPrimaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        )),
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
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: kDarkColor,
        )),
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
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: kDarkColorDarkMode,
    ),
    primaryColor: kPrimaryDarkColor,
    primaryColorDark: kDarkColorDarkMode,
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: kWhiteColor,
        ),
        bodySmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: kWhiteColor,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: kWhiteColor,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kDarkColorDarkMode,
      selectedItemColor: kPrimaryDarkColor,
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
