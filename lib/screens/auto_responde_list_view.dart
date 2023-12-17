import 'package:app/notifiers/auto_responses_notifier.dart';
import 'package:app/models/auto_response.dart';
import 'package:app/screens/add_auto_response.dart';
import 'package:app/providers/providers.dart';
import 'package:app/utils/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:country_flags/country_flags.dart';

import '../generated/locale_keys.g.dart';

class AutoResponseListView extends ConsumerWidget {
  const AutoResponseListView({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var responsesProvider = ref.watch(autoResponsesProvider);
    var responses = responsesProvider.responses;

    return Scaffold(
      drawer: SafeArea(child: _buildDrawer(context)),
      appBar: _buildAppBar(context),
      body: responses.isEmpty
          ? Center(child: const Text(LocaleKeys.listEmpty).tr())
          : _buildListView(responses, responsesProvider),
    );
  }

  ListView _buildListView(
      List<AutoResponse> responses, AutoResponses responsesProvider) {
    return ListView.builder(
      itemCount: responses.length,
      itemBuilder: (context, index) => Column(
        children: [
          Dismissible(
            direction: DismissDirection.endToStart,
            onDismissed: (_) =>
                responsesProvider.deleteResponse(responses[index].id),
            key: Key(responses[index].id),
            background:
                const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  size: 40,
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            ]),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              title: Row(
                children: [
                  Expanded(
                    child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                        child: Text(responses[index].senderName.isNotEmpty
                            ? responses[index].senderName
                            : responses[index].senderNumber)),
                  ),
                  const Icon(Icons.arrow_right_alt_sharp),
                  Expanded(
                    child: FittedBox(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.scaleDown,
                        child: Text(responses[index].receiverName.isNotEmpty
                            ? responses[index].receiverName
                            : responses[index].receiverNumber)),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  if (responses[index].senderMessage.isNotEmpty)
                    Expanded(
                      child: FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.scaleDown,
                          child: Text(responses[index].senderMessage)),
                    ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: FittedBox(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.scaleDown,
                        child: Text(responses[index].receiverMessage)),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 0)
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(LocaleKeys.title).tr(),
      actions: [
        IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AddAutoResponse.routeName),
            icon: const Icon(Icons.add))
      ],
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.setLocale(Locales.croatia);
                    Navigator.of(context).pop();
                  },
                  child: CountryFlags.flag(
                    Locales.croatia.countryCode!,
                    height: 30,
                    width: 60,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.setLocale(Locales.english);
                    Navigator.of(context).pop();
                  },
                  child: CountryFlags.flag(
                    Locales.english.countryCode!,
                    height: 30,
                    width: 60,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
