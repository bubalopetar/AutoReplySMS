import 'package:app/utils/prefs.dart';
import 'package:app/utils/sms_helper.dart';
import 'package:flutter/material.dart';

import '../models/auto_response.dart';

class AutoResponsesNotifier extends ChangeNotifier {
  late List<AutoResponse> responses = [];
  Prefs prefs = Prefs();
  late SmsHelper smsHelper;
  AutoResponsesNotifier() {
    prefs.init();
    getResponsesFromPrefs();
    smsHelper = SmsHelper(responses);
    smsHelper.setBackgroundListener();
  }
  void getResponsesFromPrefs() {
    for (var key in prefs.getKeys()) {
      if (key == 'locale') {
        continue;
      }
      responses.add(AutoResponse.fromJson(prefs.getString(key)));
    }
    notifyListeners();
    return;
  }

  Future<void> createAutoResponseAndSaveToPrefs({
    required String senderName,
    required String senderNumber,
    required String senderMessage,
    required String receiverName,
    required String receiverNumber,
    required String receiverMessage,
  }) async {
    String id = DateTime.now().toIso8601String();
    var newResponse = AutoResponse(
        id: id,
        senderName: senderName,
        senderNumber: senderNumber,
        senderMessage: senderMessage,
        receiverNumber: receiverNumber,
        receiverName: receiverName,
        receiverMessage: receiverMessage);
    await prefs.setString(id, newResponse.toJson());
    responses.add(newResponse);
    notifyListeners();
  }

  void deleteResponse(String id) {
    responses.removeWhere((element) => element.id == id);
    prefs.clearPreference(id);
    notifyListeners();
  }
}
