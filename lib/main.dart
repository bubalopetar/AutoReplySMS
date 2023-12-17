import 'package:app/notifiers/settings_notifier.dart';
import 'package:app/utils/locales.dart';
import 'package:app/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Settings().loadTheme();
  await Prefs().init();

  runApp(
    EasyLocalization(
        saveLocale: true,
        supportedLocales: const [Locales.english, Locales.croatia],
        path: Locales.translationsPath,
        fallbackLocale: Locales.english,
        child: const ProviderScope(child: MyApp())),
  );
}
