
import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  ThemeMode get currentThemeMode => themeMode;

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}