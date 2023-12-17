// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AutoResponse {
  String id;
  String senderName;
  String senderNumber;
  String senderMessage;
  String receiverName;
  String receiverNumber;
  String receiverMessage;
  AutoResponse({
    required this.id,
    required this.senderName,
    required this.senderNumber,
    required this.senderMessage,
    required this.receiverName,
    required this.receiverNumber,
    required this.receiverMessage,
  });
 

  AutoResponse copyWith({
    String? id,
    String? senderName,
    String? senderNumber,
    String? senderMessage,
    String? receiverName,
    String? receiverNumber,
    String? receiverMessage,
  }) {
    return AutoResponse(
      id: id ?? this.id,
      senderName: senderName ?? this.senderName,
      senderNumber: senderNumber ?? this.senderNumber,
      senderMessage: senderMessage ?? this.senderMessage,
      receiverName: receiverName ?? this.receiverName,
      receiverNumber: receiverNumber ?? this.receiverNumber,
      receiverMessage: receiverMessage ?? this.receiverMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'senderName': senderName,
      'senderNumber': senderNumber,
      'senderMessage': senderMessage,
      'receiverName': receiverName,
      'receiverNumber': receiverNumber,
      'receiverMessage': receiverMessage,
    };
  }

  factory AutoResponse.fromMap(Map<String, dynamic> map) {
    return AutoResponse(
      id: map['id'] as String,
      senderName: map['senderName'] as String,
      senderNumber: map['senderNumber'] as String,
      senderMessage: map['senderMessage'] as String,
      receiverName: map['receiverName'] as String,
      receiverNumber: map['receiverNumber'] as String,
      receiverMessage: map['receiverMessage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AutoResponse.fromJson(String source) => AutoResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AutoResponse(id: $id, senderName: $senderName, senderNumber: $senderNumber, senderMessage: $senderMessage, receiverName: $receiverName, receiverNumber: $receiverNumber, receiverMessage: $receiverMessage)';
  }

  @override
  bool operator ==(covariant AutoResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.senderName == senderName &&
      other.senderNumber == senderNumber &&
      other.senderMessage == senderMessage &&
      other.receiverName == receiverName &&
      other.receiverNumber == receiverNumber &&
      other.receiverMessage == receiverMessage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      senderName.hashCode ^
      senderNumber.hashCode ^
      senderMessage.hashCode ^
      receiverName.hashCode ^
      receiverNumber.hashCode ^
      receiverMessage.hashCode;
  }
}
