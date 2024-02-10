import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeData getTheme() => _themeData;

  void toggleTheme() {
    _themeData =
    _themeData == ThemeData.light() ? ThemeData.dark() : ThemeData.light(
      useMaterial3: true
    );
    notifyListeners();
  }
}