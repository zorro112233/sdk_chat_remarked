// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../message.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
  int? get id => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? timestamp,
      String? text,
      String? direction,
      int? to});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDtoImplCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$MessageDtoImplCopyWith(
          _$MessageDtoImpl value, $Res Function(_$MessageDtoImpl) then) =
      __$$MessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? timestamp,
      String? text,
      String? direction,
      int? to});
}

/// @nodoc
class __$$MessageDtoImplCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$MessageDtoImpl>
    implements _$$MessageDtoImplCopyWith<$Res> {
  __$$MessageDtoImplCopyWithImpl(
      _$MessageDtoImpl _value, $Res Function(_$MessageDtoImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$MessageDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDtoImpl extends _MessageDto {
  const _$MessageDtoImpl(
      {this.id, this.uuid, this.timestamp, this.text, this.direction, this.to})
      : super._();

  factory _$MessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDtoImplFromJson(json);

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
  String toString() {
    return 'MessageDto(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, direction: $direction, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uuid, timestamp, text, direction, to);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      __$$MessageDtoImplCopyWithImpl<_$MessageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
      {final int? id,
      final String? uuid,
      final int? timestamp,
      final String? text,
      final String? direction,
      final int? to}) = _$MessageDtoImpl;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$MessageDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get uuid;
  @override
  int? get timestamp;
  @override
  String? get text;
  @override
  String? get direction;
  @override
  int? get to;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
