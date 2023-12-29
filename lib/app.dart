import 'package:app/flavors/flavors.dart';
import 'package:app/providers/providers.dart';
import 'package:app/screens/add_auto_reply.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/auto_replies_list_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: F.appFlavor == Flavor.debuging,
      theme: ref.watch(settingsProvider).theme,
      routes: {
        AutoRepliesListView.routeName: (context) => const AutoRepliesListView(),
        AddAutoReply.routeName: (context) => const AddAutoReply()
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
