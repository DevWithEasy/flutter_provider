import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier{
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode=> _themeMode;

  void setTheme(theme){
    _themeMode = theme;
    notifyListeners();
  }
}