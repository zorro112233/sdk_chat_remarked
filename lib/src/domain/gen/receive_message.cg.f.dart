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
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveMessageCopyWith<ReceiveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveMessageCopyWith<$Res> {
  factory $ReceiveMessageCopyWith(
          ReceiveMessage value, $Res Function(ReceiveMessage) then) =
      _$ReceiveMessageCopyWithImpl<$Res, ReceiveMessage>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class _$ReceiveMessageCopyWithImpl<$Res, $Val extends ReceiveMessage>
    implements $ReceiveMessageCopyWith<$Res> {
  _$ReceiveMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$ReceiveMessageImplCopyWithImpl<$Res>
    extends _$ReceiveMessageCopyWithImpl<$Res, _$ReceiveMessageImpl>
    implements _$$ReceiveMessageImplCopyWith<$Res> {
  __$$ReceiveMessageImplCopyWithImpl(
      _$ReceiveMessageImpl _value, $Res Function(_$ReceiveMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ReceiveMessageImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageImpl implements _ReceiveMessage {
  const _$ReceiveMessageImpl({required final List<Message> messages})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ReceiveMessage(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      __$$ReceiveMessageImplCopyWithImpl<_$ReceiveMessageImpl>(
          this, _$identity);
}

abstract class _ReceiveMessage implements ReceiveMessage {
  const factory _ReceiveMessage({required final List<Message> messages}) =
      _$ReceiveMessageImpl;

  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
