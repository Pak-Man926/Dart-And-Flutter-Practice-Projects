import "package:flutter/material.dart";

class ThemeProvider extends ChangeNotifier
{
  ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;

  void toggleTheme()
  {
    if (_themeData == ThemeData.light())
    {
      _themeData = ThemeData.dark();
    }
    else
    {
      _themeData = ThemeData.light();
    }
    notifyListeners();
  }
}