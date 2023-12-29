import 'package:freezed_annotation/freezed_annotation.dart';
part 'auto_reply.freezed.dart';
part 'auto_reply.g.dart';

@freezed
class AutoReply with _$AutoReply {
  factory AutoReply({
    required String id,
    required String senderName,
    required String senderNumber,
    required String senderMessage,
    required String receiverName,
    required String receiverNumber,
    required String receiverMessage,
  }) = _AutoReply;

  factory AutoReply.fromJson(Map<String, dynamic> json) =>
      _$AutoReplyFromJson(json);
}
