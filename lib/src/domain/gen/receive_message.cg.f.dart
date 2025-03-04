// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../receive_message.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceiveMessage {
  String get status;
  String get message;
  List<Message> get messages;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReceiveMessageCopyWith<ReceiveMessage> get copyWith =>
      _$ReceiveMessageCopyWithImpl<ReceiveMessage>(
          this as ReceiveMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReceiveMessage &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(messages));

  @override
  String toString() {
    return 'ReceiveMessage(status: $status, message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class $ReceiveMessageCopyWith<$Res> {
  factory $ReceiveMessageCopyWith(
          ReceiveMessage value, $Res Function(ReceiveMessage) _then) =
      _$ReceiveMessageCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<Message> messages});
}

/// @nodoc
class _$ReceiveMessageCopyWithImpl<$Res>
    implements $ReceiveMessageCopyWith<$Res> {
  _$ReceiveMessageCopyWithImpl(this._self, this._then);

  final ReceiveMessage _self;
  final $Res Function(ReceiveMessage) _then;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messages = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _ReceiveMessage implements ReceiveMessage {
  const _ReceiveMessage(
      {required this.status,
      required this.message,
      required final List<Message> messages})
      : _messages = messages;

  @override
  final String status;
  @override
  final String message;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReceiveMessageCopyWith<_ReceiveMessage> get copyWith =>
      __$ReceiveMessageCopyWithImpl<_ReceiveMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiveMessage &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_messages));

  @override
  String toString() {
    return 'ReceiveMessage(status: $status, message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class _$ReceiveMessageCopyWith<$Res>
    implements $ReceiveMessageCopyWith<$Res> {
  factory _$ReceiveMessageCopyWith(
          _ReceiveMessage value, $Res Function(_ReceiveMessage) _then) =
      __$ReceiveMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<Message> messages});
}

/// @nodoc
class __$ReceiveMessageCopyWithImpl<$Res>
    implements _$ReceiveMessageCopyWith<$Res> {
  __$ReceiveMessageCopyWithImpl(this._self, this._then);

  final _ReceiveMessage _self;
  final $Res Function(_ReceiveMessage) _then;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messages = null,
  }) {
    return _then(_ReceiveMessage(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

// dart format on
