// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> hr_HR = {
  "title": "AutoRespondeSMS",
  "sender": "Kad primim SMS sa broja",
  "senderHint": "Broj pošiljatelja",
  "senderMessage": "Ako sadrži frazu",
  "senderMessageHint": "Fraza koju treba sadržavati",
  "receiver": "Pošalji prema",
  "receiverHint": "Broj primatelja",
  "receiverMessage": "Poruka koju želite poslati",
  "emptyError": "Polje ne smije biti prazno",
  "save": "Spremi",
  "saveSuccess": "Novi unos je uspješno spremljen!",
  "listEmpty": "Nema unosa, pritisnite + za dodati"
};
static const Map<String,dynamic> en_GB = {
  "title": "AutoRespondeSMS",
  "sender": "When I receive SMS from number",
  "senderHint": "Sender phone number",
  "senderMessage": "If it contains phrase",
  "senderMessageHint": "Specific phrase message should contain or leave empty",
  "receiver": "Send to",
  "receiverHint": "Phone number",
  "receiverMessage": "Message you want to send",
  "emptyError": "Value should not be empty!",
  "save": "Save",
  "saveSuccess": "New item is saved successfully!",
  "listEmpty": "There are no items yet, press + to add"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"hr_HR": hr_HR, "en_GB": en_GB};
}
