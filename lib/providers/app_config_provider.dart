import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  late String appLanguage;
  late ThemeMode themeMode;
  AppConfigProvider({required this.appLanguage, required this.themeMode});
  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode newThemeMode) {
    if (themeMode == newThemeMode) {
      return;
    }
    themeMode = newThemeMode;
    notifyListeners();
  }

  bool isDarkTheme() => themeMode == ThemeMode.dark;
}
