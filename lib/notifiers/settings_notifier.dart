import 'dart:convert';

import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final themeStr = await rootBundle
        .loadString(isDarkMode ? Assets.themes.dark : Assets.themes.light);
    final themeJson = jsonDecode(themeStr);
    theme = ThemeDecoder.decodeThemeData(themeJson)!;
  }
}
