import 'package:app/utils/prefs.dart';
import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  final Prefs _prefs = Prefs();
  static const String _darkModeKey = 'darkMode';
  

  static final Settings _instance = Settings._internal();

  factory Settings() {
    return _instance;
  }

  Settings._internal();

  //TODO implement themes
  set darkMode(bool value) => _prefs.setBool(_darkModeKey, value);
  // set language(String countryCode) =>
  //     _prefs.setString(_countryCode, countryCode);

  bool get darkMode => _prefs.getBool(_darkModeKey);
  // String get language => _prefs.getString(_countryCode);
}
