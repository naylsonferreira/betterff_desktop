import 'package:flutter/material.dart';

class ThemeProviderApp extends ChangeNotifier {
  static ThemeProviderApp instance = ThemeProviderApp();

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
