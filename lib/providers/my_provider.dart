import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode myTheme = ThemeMode.light;
  String language = 'en';

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
// void changeTheme(ThemeMode theme) {
//   themeMode = theme;
//   notifyListeners();
// }
}
