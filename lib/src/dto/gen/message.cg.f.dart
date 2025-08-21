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
  dynamic get id => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  dynamic get timestamp => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  ExtraDto? get extra => throw _privateConstructorUsedError;

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
      {dynamic id,
      String? uuid,
      dynamic timestamp,
      String? text,
      String? direction,
      String? to,
      String? attachment,
      ExtraDto? extra});

  $ExtraDtoCopyWith<$Res>? get extra;
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
    Object? attachment = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraDto?,
    ) as $Val);
  }

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraDtoCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraDtoCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
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
      {dynamic id,
      String? uuid,
      dynamic timestamp,
      String? text,
      String? direction,
      String? to,
      String? attachment,
      ExtraDto? extra});

  @override
  $ExtraDtoCopyWith<$Res>? get extra;
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
    Object? attachment = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$MessageDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDtoImpl extends _MessageDto {
  const _$MessageDtoImpl(
      {this.id,
      this.uuid,
      this.timestamp,
      this.text,
      this.direction,
      this.to,
      this.attachment,
      this.extra})
      : super._();

  factory _$MessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDtoImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? uuid;
  @override
  final dynamic timestamp;
  @override
  final String? text;
  @override
  final String? direction;
  @override
  final String? to;
  @override
  final String? attachment;
  @override
  final ExtraDto? extra;

  @override
  String toString() {
    return 'MessageDto(id: $id, uuid: $uuid, timestamp: $timestamp, text: $text, direction: $direction, to: $to, attachment: $attachment, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDtoImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      uuid,
      const DeepCollectionEquality().hash(timestamp),
      text,
      direction,
      to,
      attachment,
      extra);

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
      {final dynamic id,
      final String? uuid,
      final dynamic timestamp,
      final String? text,
      final String? direction,
      final String? to,
      final String? attachment,
      final ExtraDto? extra}) = _$MessageDtoImpl;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$MessageDtoImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get uuid;
  @override
  dynamic get timestamp;
  @override
  String? get text;
  @override
  String? get direction;
  @override
  String? get to;
  @override
  String? get attachment;
  @override
  ExtraDto? get extra;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraDto _$ExtraDtoFromJson(Map<String, dynamic> json) {
  return _ExtraDto.fromJson(json);
}

/// @nodoc
mixin _$ExtraDto {
  String? get buttons => throw _privateConstructorUsedError;
  String? get chainId => throw _privateConstructorUsedError;
  dynamic get scenarioStepId => throw _privateConstructorUsedError;

  /// Serializes this ExtraDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtraDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraDtoCopyWith<ExtraDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraDtoCopyWith<$Res> {
  factory $ExtraDtoCopyWith(ExtraDto value, $Res Function(ExtraDto) then) =
      _$ExtraDtoCopyWithImpl<$Res, ExtraDto>;
  @useResult
  $Res call({String? buttons, String? chainId, dynamic scenarioStepId});
}

/// @nodoc
class _$ExtraDtoCopyWithImpl<$Res, $Val extends ExtraDto>
    implements $ExtraDtoCopyWith<$Res> {
  _$ExtraDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtraDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = freezed,
    Object? chainId = freezed,
    Object? scenarioStepId = freezed,
  }) {
    return _then(_value.copyWith(
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as String?,
      chainId: freezed == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String?,
      scenarioStepId: freezed == scenarioStepId
          ? _value.scenarioStepId
          : scenarioStepId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraDtoImplCopyWith<$Res>
    implements $ExtraDtoCopyWith<$Res> {
  factory _$$ExtraDtoImplCopyWith(
          _$ExtraDtoImpl value, $Res Function(_$ExtraDtoImpl) then) =
      __$$ExtraDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? buttons, String? chainId, dynamic scenarioStepId});
}

/// @nodoc
class __$$ExtraDtoImplCopyWithImpl<$Res>
    extends _$ExtraDtoCopyWithImpl<$Res, _$ExtraDtoImpl>
    implements _$$ExtraDtoImplCopyWith<$Res> {
  __$$ExtraDtoImplCopyWithImpl(
      _$ExtraDtoImpl _value, $Res Function(_$ExtraDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtraDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = freezed,
    Object? chainId = freezed,
    Object? scenarioStepId = freezed,
  }) {
    return _then(_$ExtraDtoImpl(
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as String?,
      chainId: freezed == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String?,
      scenarioStepId: freezed == scenarioStepId
          ? _value.scenarioStepId
          : scenarioStepId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraDtoImpl extends _ExtraDto {
  const _$ExtraDtoImpl({this.buttons, this.chainId, this.scenarioStepId})
      : super._();

  factory _$ExtraDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraDtoImplFromJson(json);

  @override
  final String? buttons;
  @override
  final String? chainId;
  @override
  final dynamic scenarioStepId;

  @override
  String toString() {
    return 'ExtraDto(buttons: $buttons, chainId: $chainId, scenarioStepId: $scenarioStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraDtoImpl &&
            (identical(other.buttons, buttons) || other.buttons == buttons) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            const DeepCollectionEquality()
                .equals(other.scenarioStepId, scenarioStepId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buttons, chainId,
      const DeepCollectionEquality().hash(scenarioStepId));

  /// Create a copy of ExtraDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraDtoImplCopyWith<_$ExtraDtoImpl> get copyWith =>
      __$$ExtraDtoImplCopyWithImpl<_$ExtraDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraDtoImplToJson(
      this,
    );
  }
}

abstract class _ExtraDto extends ExtraDto {
  const factory _ExtraDto(
      {final String? buttons,
      final String? chainId,
      final dynamic scenarioStepId}) = _$ExtraDtoImpl;
  const _ExtraDto._() : super._();

  factory _ExtraDto.fromJson(Map<String, dynamic> json) =
      _$ExtraDtoImpl.fromJson;

  @override
  String? get buttons;
  @override
  String? get chainId;
  @override
  dynamic get scenarioStepId;

  /// Create a copy of ExtraDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraDtoImplCopyWith<_$ExtraDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ButtonDto _$ButtonDtoFromJson(Map<String, dynamic> json) {
  return _ButtonDto.fromJson(json);
}

/// @nodoc
mixin _$ButtonDto {
  String? get text => throw _privateConstructorUsedError;
  String? get callbackData => throw _privateConstructorUsedError;

  /// Serializes this ButtonDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtonDtoCopyWith<ButtonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonDtoCopyWith<$Res> {
  factory $ButtonDtoCopyWith(ButtonDto value, $Res Function(ButtonDto) then) =
      _$ButtonDtoCopyWithImpl<$Res, ButtonDto>;
  @useResult
  $Res call({String? text, String? callbackData});
}

/// @nodoc
class _$ButtonDtoCopyWithImpl<$Res, $Val extends ButtonDto>
    implements $ButtonDtoCopyWith<$Res> {
  _$ButtonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? callbackData = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackData: freezed == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonDtoImplCopyWith<$Res>
    implements $ButtonDtoCopyWith<$Res> {
  factory _$$ButtonDtoImplCopyWith(
          _$ButtonDtoImpl value, $Res Function(_$ButtonDtoImpl) then) =
      __$$ButtonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? callbackData});
}

/// @nodoc
class __$$ButtonDtoImplCopyWithImpl<$Res>
    extends _$ButtonDtoCopyWithImpl<$Res, _$ButtonDtoImpl>
    implements _$$ButtonDtoImplCopyWith<$Res> {
  __$$ButtonDtoImplCopyWithImpl(
      _$ButtonDtoImpl _value, $Res Function(_$ButtonDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? callbackData = freezed,
  }) {
    return _then(_$ButtonDtoImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackData: freezed == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonDtoImpl extends _ButtonDto {
  const _$ButtonDtoImpl({this.text, this.callbackData}) : super._();

  factory _$ButtonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonDtoImplFromJson(json);

  @override
  final String? text;
  @override
  final String? callbackData;

  @override
  String toString() {
    return 'ButtonDto(text: $text, callbackData: $callbackData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonDtoImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.callbackData, callbackData) ||
                other.callbackData == callbackData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, callbackData);

  /// Create a copy of ButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonDtoImplCopyWith<_$ButtonDtoImpl> get copyWith =>
      __$$ButtonDtoImplCopyWithImpl<_$ButtonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonDtoImplToJson(
      this,
    );
  }
}

abstract class _ButtonDto extends ButtonDto {
  const factory _ButtonDto({final String? text, final String? callbackData}) =
      _$ButtonDtoImpl;
  const _ButtonDto._() : super._();

  factory _ButtonDto.fromJson(Map<String, dynamic> json) =
      _$ButtonDtoImpl.fromJson;

  @override
  String? get text;
  @override
  String? get callbackData;

  /// Create a copy of ButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonDtoImplCopyWith<_$ButtonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
