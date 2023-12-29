// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoReplyImpl _$$AutoReplyImplFromJson(Map<String, dynamic> json) =>
    _$AutoReplyImpl(
      id: json['id'] as String,
      senderName: json['senderName'] as String,
      senderNumber: json['senderNumber'] as String,
      senderMessage: json['senderMessage'] as String,
      receiverName: json['receiverName'] as String,
      receiverNumber: json['receiverNumber'] as String,
      receiverMessage: json['receiverMessage'] as String,
    );

Map<String, dynamic> _$$AutoReplyImplToJson(_$AutoReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'senderNumber': instance.senderNumber,
      'senderMessage': instance.senderMessage,
      'receiverName': instance.receiverName,
      'receiverNumber': instance.receiverNumber,
      'receiverMessage': instance.receiverMessage,
    };
