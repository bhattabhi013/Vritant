import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  Locale eng = const Locale('en');
  Locale hin = const Locale('hi');
  Locale? get locale => _locale;

  void set() {
    if (_locale == eng) {
      _locale = hin;
    } else {
      _locale = eng;
    }
    _locale = locale;
    notifyListeners();
  }
}
