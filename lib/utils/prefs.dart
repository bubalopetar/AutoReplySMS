import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static final Prefs _instance = Prefs._internal();
  late SharedPreferences _prefs;

  factory Prefs() {
    return _instance;
  }

  Prefs._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Set<String> getKeys() {
    return _prefs.getKeys();
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  Future<void> clearPreference(String key) async {
    await _prefs.remove(key);
  }

  Future<void> clearAllPreferences() async {
    await _prefs.clear();
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  Future<void> setBool(String key, bool value) async {
    _prefs.setBool(key, value);
  }
}
