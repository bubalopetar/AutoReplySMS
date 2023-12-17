import 'package:app/flavors/flavors.dart';
import 'package:app/screens/add_auto_response.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'screens/auto_responde_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.theme});
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: F.appFlavor == Flavor.debuging,
      theme:theme ,
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
