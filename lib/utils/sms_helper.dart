import 'package:app/utils/prefs.dart';
import 'package:telephony/telephony.dart';

import '../models/auto_response.dart';

class SmsHelper {
  late Telephony telephony;
  late List<AutoResponse> responses = [];

  SmsHelper(this.responses) {
    telephony = Telephony.instance;
    askPermissions();
  }

  set setResponses(List<AutoResponse> responses) {
    this.responses = responses;
  }

  Future<void> askPermissions() async {
    await telephony.requestPhoneAndSmsPermissions;
  }

  void onNewMessage(SmsMessage message) async {
    for (var response in responses) {
      if (message.address!.endsWith(response.senderNumber.substring(1))) {
        if (response.senderMessage.isNotEmpty) {
          if (message.body!.contains(response.senderMessage)) {
            telephony.sendSms(
                to: response.receiverNumber, message: response.receiverMessage);
          }
        } else {
          telephony.sendSms(
              to: response.receiverNumber, message: response.receiverMessage);
        }
      }
    }
  }

  void setBackgroundListener() async {
    telephony.listenIncomingSms(
        onNewMessage: onNewMessage,
        onBackgroundMessage: backgroundMessageHandler);
  }
}

@pragma('vm:entry-point')
void backgroundMessageHandler(SmsMessage message) async {
  Prefs prefs = Prefs();
  await prefs.init();

  List<AutoResponse> responses = [];
  for (var key in prefs.getKeys()) {
    responses.add(AutoResponse.fromJson(prefs.getString(key)));
  }

  var telephony = Telephony.instance;
  for (var response in responses) {
    if (message.address!.endsWith(response.senderNumber.substring(1))) {
      if (response.senderMessage.isNotEmpty) {
        if (message.body!.contains(response.senderMessage)) {
          telephony.sendSms(
              to: response.receiverNumber, message: response.receiverMessage);
        }
      } else {
        telephony.sendSms(
            to: response.receiverNumber, message: response.receiverMessage);
      }
    }
  }
}
