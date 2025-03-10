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
mixin _$MessageDto {
  int? get id;
  String? get uuid;
  int? get timestamp;
  String? get text;
  String? get direction;
  int? get to;
  String? get attachment;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      _$MessageDtoCopyWithImpl<MessageDto>(this as MessageDto, _$identity);

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, uuid, timestamp, text, direction, to, attachment);

  @override
  String toString() {
    return 'MessageDto(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, direction: $direction, to: $to, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) _then) =
      _$MessageDtoCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? timestamp,
      String? text,
      String? direction,
      int? to,
      String? attachment});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._self, this._then);

  final MessageDto _self;
  final $Res Function(MessageDto) _then;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? timestamp = freezed,
    Object? text = freezed,
    Object? direction = freezed,
    Object? to = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageDto extends MessageDto {
  const _MessageDto(
      {this.id,
      this.uuid,
      this.timestamp,
      this.text,
      this.direction,
      this.to,
      this.attachment})
      : super._();
  factory _MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? uuid;
  @override
  final int? timestamp;
  @override
  final String? text;
  @override
  final String? direction;
  @override
  final int? to;
  @override
  final String? attachment;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, uuid, timestamp, text, direction, to, attachment);

  @override
  String toString() {
    return 'MessageDto(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, direction: $direction, to: $to, attachment: $attachment)';
  }
}

/// @nodoc
abstract mixin class _$MessageDtoCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(
          _MessageDto value, $Res Function(_MessageDto) _then) =
      __$MessageDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? timestamp,
      String? text,
      String? direction,
      int? to,
      String? attachment});
}

/// @nodoc
class __$MessageDtoCopyWithImpl<$Res> implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(this._self, this._then);

  final _MessageDto _self;
  final $Res Function(_MessageDto) _then;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? timestamp = freezed,
    Object? text = freezed,
    Object? direction = freezed,
    Object? to = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_MessageDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
