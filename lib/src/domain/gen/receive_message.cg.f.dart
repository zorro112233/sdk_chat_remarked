// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../receive_message.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReceiveMessage {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiveMessageCopyWith<ReceiveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveMessageCopyWith<$Res> {
  factory $ReceiveMessageCopyWith(
          ReceiveMessage value, $Res Function(ReceiveMessage) then) =
      _$ReceiveMessageCopyWithImpl<$Res, ReceiveMessage>;
  @useResult
  $Res call({String status, String message, List<Message> messages});
}

/// @nodoc
class _$ReceiveMessageCopyWithImpl<$Res, $Val extends ReceiveMessage>
    implements $ReceiveMessageCopyWith<$Res> {
  _$ReceiveMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiveMessageImplCopyWith<$Res>
    implements $ReceiveMessageCopyWith<$Res> {
  factory _$$ReceiveMessageImplCopyWith(_$ReceiveMessageImpl value,
          $Res Function(_$ReceiveMessageImpl) then) =
      __$$ReceiveMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message, List<Message> messages});
}

/// @nodoc
class __$$ReceiveMessageImplCopyWithImpl<$Res>
    extends _$ReceiveMessageCopyWithImpl<$Res, _$ReceiveMessageImpl>
    implements _$$ReceiveMessageImplCopyWith<$Res> {
  __$$ReceiveMessageImplCopyWithImpl(
      _$ReceiveMessageImpl _value, $Res Function(_$ReceiveMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messages = null,
  }) {
    return _then(_$ReceiveMessageImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageImpl implements _ReceiveMessage {
  const _$ReceiveMessageImpl(
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

  @override
  String toString() {
    return 'ReceiveMessage(status: $status, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      __$$ReceiveMessageImplCopyWithImpl<_$ReceiveMessageImpl>(
          this, _$identity);
}

abstract class _ReceiveMessage implements ReceiveMessage {
  const factory _ReceiveMessage(
      {required final String status,
      required final String message,
      required final List<Message> messages}) = _$ReceiveMessageImpl;

  @override
  String get status;
  @override
  String get message;
  @override
  List<Message> get messages;

  /// Create a copy of ReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
