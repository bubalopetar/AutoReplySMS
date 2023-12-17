import 'dart:convert';

import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';

class Settings extends ChangeNotifier {
  factory Settings() {
    return _instance;
  }
  static final Settings _instance = Settings._internal();
  Settings._internal();

  late ThemeData theme;

  Future<void> loadTheme() async {
    final themeStr = await rootBundle.loadString(Assets.themes.theme);
    final themeJson = jsonDecode(themeStr);
    theme = ThemeDecoder.decodeThemeData(themeJson)!;
  }
}
