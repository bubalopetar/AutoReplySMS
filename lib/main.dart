import 'dart:convert';

import 'package:app/utils/locales.dart';
import 'package:app/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_theme/json_theme.dart';
import '../../app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeStr = await rootBundle.loadString('assets/themes/theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  Prefs().init();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      saveLocale: true,
      supportedLocales: const [Locales.english, Locales.croatia],
      path: Locales.translationsPath,
      fallbackLocale: Locales.english,
      child: ProviderScope(
          child: MyApp(
        theme: theme,
      )),
    ),
  );
}
