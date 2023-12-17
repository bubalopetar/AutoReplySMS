import 'package:app/flavors/flavors.dart';
import 'package:app/providers/providers.dart';
import 'package:app/screens/add_auto_response.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/auto_responde_list_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: F.appFlavor == Flavor.debuging,
      theme: ref.watch(settingsProvider).theme,
      routes: {
        AutoResponseListView.routeName: (context) =>
            const AutoResponseListView(),
        AddAutoResponse.routeName: (context) => const AddAutoResponse()
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
