import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  late String appLanguage;
  AppConfigProvider({required this.appLanguage});
  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}
