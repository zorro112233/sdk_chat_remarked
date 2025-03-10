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
mixin _$ReceiveMessageDto {
  String? get status;
  String? get message;
  List<MessageDto>? get messages;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReceiveMessageDtoCopyWith<ReceiveMessageDto> get copyWith =>
      _$ReceiveMessageDtoCopyWithImpl<ReceiveMessageDto>(
          this as ReceiveMessageDto, _$identity);

  /// Serializes this ReceiveMessageDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReceiveMessageDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(messages));

  @override
  String toString() {
    return 'ReceiveMessageDto(status: $status, message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class $ReceiveMessageDtoCopyWith<$Res> {
  factory $ReceiveMessageDtoCopyWith(
          ReceiveMessageDto value, $Res Function(ReceiveMessageDto) _then) =
      _$ReceiveMessageDtoCopyWithImpl;
  @useResult
  $Res call({String? status, String? message, List<MessageDto>? messages});
}

/// @nodoc
class _$ReceiveMessageDtoCopyWithImpl<$Res>
    implements $ReceiveMessageDtoCopyWith<$Res> {
  _$ReceiveMessageDtoCopyWithImpl(this._self, this._then);

  final ReceiveMessageDto _self;
  final $Res Function(ReceiveMessageDto) _then;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReceiveMessageDto extends ReceiveMessageDto {
  const _ReceiveMessageDto(
      {this.status, this.message, final List<MessageDto>? messages})
      : _messages = messages,
        super._();
  factory _ReceiveMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiveMessageDtoFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<MessageDto>? _messages;
  @override
  List<MessageDto>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReceiveMessageDtoCopyWith<_ReceiveMessageDto> get copyWith =>
      __$ReceiveMessageDtoCopyWithImpl<_ReceiveMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReceiveMessageDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiveMessageDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_messages));

  @override
  String toString() {
    return 'ReceiveMessageDto(status: $status, message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class _$ReceiveMessageDtoCopyWith<$Res>
    implements $ReceiveMessageDtoCopyWith<$Res> {
  factory _$ReceiveMessageDtoCopyWith(
          _ReceiveMessageDto value, $Res Function(_ReceiveMessageDto) _then) =
      __$ReceiveMessageDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String? status, String? message, List<MessageDto>? messages});
}

/// @nodoc
class __$ReceiveMessageDtoCopyWithImpl<$Res>
    implements _$ReceiveMessageDtoCopyWith<$Res> {
  __$ReceiveMessageDtoCopyWithImpl(this._self, this._then);

  final _ReceiveMessageDto _self;
  final $Res Function(_ReceiveMessageDto) _then;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_ReceiveMessageDto(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ));
  }
}

// dart format on
