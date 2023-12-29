import 'dart:convert';

import 'package:app/utils/prefs.dart';
import 'package:app/utils/sms_helper.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auto_reply.dart';

part 'auto_replies_notifier.g.dart';

@riverpod
class AutoReplies extends _$AutoReplies {
  late SmsHelper smsHelper;
  Prefs prefs = Prefs();

  @override
  List<AutoReply> build() {
    state = [];
    prefs.init();
    getResponsesFromPrefs();
    smsHelper = SmsHelper(state)..setBackgroundListener();
    return getResponsesFromPrefs();
  }

  List<AutoReply> getResponsesFromPrefs() {
    List<AutoReply> replies = [];
    for (var key in prefs.getKeys()) {
      if (key == 'locale') {
        continue;
      }
      replies.add(AutoReply.fromJson(jsonDecode(prefs.getString(key))));
    }

    return replies;
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
    var newResponse = AutoReply(
        id: id,
        senderName: senderName,
        senderNumber: senderNumber,
        senderMessage: senderMessage,
        receiverNumber: receiverNumber,
        receiverName: receiverName,
        receiverMessage: receiverMessage);
    await prefs.setString(id, jsonEncode(newResponse.toJson()));
    state = [...state, newResponse];
  }

  void deleteResponse(String id) {
    state = state.where((AutoReply element) => element.id != id).toList();
    prefs.clearPreference(id);
  }
}
