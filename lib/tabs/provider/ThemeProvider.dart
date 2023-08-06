import 'package:flutter/material.dart';
import 'package:vritant/themes/dark.dart';
import 'package:vritant/themes/light.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData? currentTheme;

  setLightMode() {
    currentTheme = lightTheme;
    notifyListeners();
  }

  setDarkmode() {
    currentTheme = darkTheme;
    notifyListeners();
  }
}
