// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutoReply _$AutoReplyFromJson(Map<String, dynamic> json) {
  return _AutoReply.fromJson(json);
}

/// @nodoc
mixin _$AutoReply {
  String get id => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String get senderNumber => throw _privateConstructorUsedError;
  String get senderMessage => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receiverNumber => throw _privateConstructorUsedError;
  String get receiverMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoReplyCopyWith<AutoReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoReplyCopyWith<$Res> {
  factory $AutoReplyCopyWith(AutoReply value, $Res Function(AutoReply) then) =
      _$AutoReplyCopyWithImpl<$Res, AutoReply>;
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderNumber,
      String senderMessage,
      String receiverName,
      String receiverNumber,
      String receiverMessage});
}

/// @nodoc
class _$AutoReplyCopyWithImpl<$Res, $Val extends AutoReply>
    implements $AutoReplyCopyWith<$Res> {
  _$AutoReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderName = null,
    Object? senderNumber = null,
    Object? senderMessage = null,
    Object? receiverName = null,
    Object? receiverNumber = null,
    Object? receiverMessage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderNumber: null == senderNumber
          ? _value.senderNumber
          : senderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      senderMessage: null == senderMessage
          ? _value.senderMessage
          : senderMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverNumber: null == receiverNumber
          ? _value.receiverNumber
          : receiverNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiverMessage: null == receiverMessage
          ? _value.receiverMessage
          : receiverMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoReplyImplCopyWith<$Res>
    implements $AutoReplyCopyWith<$Res> {
  factory _$$AutoReplyImplCopyWith(
          _$AutoReplyImpl value, $Res Function(_$AutoReplyImpl) then) =
      __$$AutoReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderNumber,
      String senderMessage,
      String receiverName,
      String receiverNumber,
      String receiverMessage});
}

/// @nodoc
class __$$AutoReplyImplCopyWithImpl<$Res>
    extends _$AutoReplyCopyWithImpl<$Res, _$AutoReplyImpl>
    implements _$$AutoReplyImplCopyWith<$Res> {
  __$$AutoReplyImplCopyWithImpl(
      _$AutoReplyImpl _value, $Res Function(_$AutoReplyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderName = null,
    Object? senderNumber = null,
    Object? senderMessage = null,
    Object? receiverName = null,
    Object? receiverNumber = null,
    Object? receiverMessage = null,
  }) {
    return _then(_$AutoReplyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderNumber: null == senderNumber
          ? _value.senderNumber
          : senderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      senderMessage: null == senderMessage
          ? _value.senderMessage
          : senderMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverNumber: null == receiverNumber
          ? _value.receiverNumber
          : receiverNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiverMessage: null == receiverMessage
          ? _value.receiverMessage
          : receiverMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoReplyImpl implements _AutoReply {
  _$AutoReplyImpl(
      {required this.id,
      required this.senderName,
      required this.senderNumber,
      required this.senderMessage,
      required this.receiverName,
      required this.receiverNumber,
      required this.receiverMessage});

  factory _$AutoReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoReplyImplFromJson(json);

  @override
  final String id;
  @override
  final String senderName;
  @override
  final String senderNumber;
  @override
  final String senderMessage;
  @override
  final String receiverName;
  @override
  final String receiverNumber;
  @override
  final String receiverMessage;

  @override
  String toString() {
    return 'AutoReply(id: $id, senderName: $senderName, senderNumber: $senderNumber, senderMessage: $senderMessage, receiverName: $receiverName, receiverNumber: $receiverNumber, receiverMessage: $receiverMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoReplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderNumber, senderNumber) ||
                other.senderNumber == senderNumber) &&
            (identical(other.senderMessage, senderMessage) ||
                other.senderMessage == senderMessage) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.receiverNumber, receiverNumber) ||
                other.receiverNumber == receiverNumber) &&
            (identical(other.receiverMessage, receiverMessage) ||
                other.receiverMessage == receiverMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderName, senderNumber,
      senderMessage, receiverName, receiverNumber, receiverMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoReplyImplCopyWith<_$AutoReplyImpl> get copyWith =>
      __$$AutoReplyImplCopyWithImpl<_$AutoReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoReplyImplToJson(
      this,
    );
  }
}

abstract class _AutoReply implements AutoReply {
  factory _AutoReply(
      {required final String id,
      required final String senderName,
      required final String senderNumber,
      required final String senderMessage,
      required final String receiverName,
      required final String receiverNumber,
      required final String receiverMessage}) = _$AutoReplyImpl;

  factory _AutoReply.fromJson(Map<String, dynamic> json) =
      _$AutoReplyImpl.fromJson;

  @override
  String get id;
  @override
  String get senderName;
  @override
  String get senderNumber;
  @override
  String get senderMessage;
  @override
  String get receiverName;
  @override
  String get receiverNumber;
  @override
  String get receiverMessage;
  @override
  @JsonKey(ignore: true)
  _$$AutoReplyImplCopyWith<_$AutoReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
