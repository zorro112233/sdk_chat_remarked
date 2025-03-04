// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../message.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Message {
  int get id;
  String get uuid;
  DateTime get timestamp;
  String get text;
  bool get isOutgoing;
  int get to;
  String get attachment;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageCopyWith<Message> get copyWith =>
      _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isOutgoing, isOutgoing) ||
                other.isOutgoing == isOutgoing) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, uuid, timestamp, text, isOutgoing, to, attachment);

  @override
  String toString() {
    return 'Message(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, isOutgoing: $isOutgoing, to: $to, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) =
      _$MessageCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String uuid,
      DateTime timestamp,
      String text,
      bool isOutgoing,
      int to,
      String attachment});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? timestamp = null,
    Object? text = null,
    Object? isOutgoing = null,
    Object? to = null,
    Object? attachment = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isOutgoing: null == isOutgoing
          ? _self.isOutgoing
          : isOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      attachment: null == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Message implements Message {
  const _Message(
      {required this.id,
      required this.uuid,
      required this.timestamp,
      required this.text,
      required this.isOutgoing,
      required this.to,
      required this.attachment});

  @override
  final int id;
  @override
  final String uuid;
  @override
  final DateTime timestamp;
  @override
  final String text;
  @override
  final bool isOutgoing;
  @override
  final int to;
  @override
  final String attachment;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isOutgoing, isOutgoing) ||
                other.isOutgoing == isOutgoing) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, uuid, timestamp, text, isOutgoing, to, attachment);

  @override
  String toString() {
    return 'Message(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, isOutgoing: $isOutgoing, to: $to, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) =
      __$MessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String uuid,
      DateTime timestamp,
      String text,
      bool isOutgoing,
      int to,
      String attachment});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? timestamp = null,
    Object? text = null,
    Object? isOutgoing = null,
    Object? to = null,
    Object? attachment = null,
  }) {
    return _then(_Message(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isOutgoing: null == isOutgoing
          ? _self.isOutgoing
          : isOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      attachment: null == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
