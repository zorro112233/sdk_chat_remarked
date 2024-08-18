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

ReceiveMessageDto _$ReceiveMessageDtoFromJson(Map<String, dynamic> json) {
  return _ReceiveMessageDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiveMessageDto {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<MessageDto>? get messages => throw _privateConstructorUsedError;

  /// Serializes this ReceiveMessageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiveMessageDtoCopyWith<ReceiveMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveMessageDtoCopyWith<$Res> {
  factory $ReceiveMessageDtoCopyWith(
          ReceiveMessageDto value, $Res Function(ReceiveMessageDto) then) =
      _$ReceiveMessageDtoCopyWithImpl<$Res, ReceiveMessageDto>;
  @useResult
  $Res call({String? status, String? message, List<MessageDto>? messages});
}

/// @nodoc
class _$ReceiveMessageDtoCopyWithImpl<$Res, $Val extends ReceiveMessageDto>
    implements $ReceiveMessageDtoCopyWith<$Res> {
  _$ReceiveMessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiveMessageDtoImplCopyWith<$Res>
    implements $ReceiveMessageDtoCopyWith<$Res> {
  factory _$$ReceiveMessageDtoImplCopyWith(_$ReceiveMessageDtoImpl value,
          $Res Function(_$ReceiveMessageDtoImpl) then) =
      __$$ReceiveMessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<MessageDto>? messages});
}

/// @nodoc
class __$$ReceiveMessageDtoImplCopyWithImpl<$Res>
    extends _$ReceiveMessageDtoCopyWithImpl<$Res, _$ReceiveMessageDtoImpl>
    implements _$$ReceiveMessageDtoImplCopyWith<$Res> {
  __$$ReceiveMessageDtoImplCopyWithImpl(_$ReceiveMessageDtoImpl _value,
      $Res Function(_$ReceiveMessageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$ReceiveMessageDtoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveMessageDtoImpl extends _ReceiveMessageDto {
  const _$ReceiveMessageDtoImpl(
      {this.status, this.message, final List<MessageDto>? messages})
      : _messages = messages,
        super._();

  factory _$ReceiveMessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveMessageDtoImplFromJson(json);

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

  @override
  String toString() {
    return 'ReceiveMessageDto(status: $status, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageDtoImplCopyWith<_$ReceiveMessageDtoImpl> get copyWith =>
      __$$ReceiveMessageDtoImplCopyWithImpl<_$ReceiveMessageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveMessageDtoImplToJson(
      this,
    );
  }
}

abstract class _ReceiveMessageDto extends ReceiveMessageDto {
  const factory _ReceiveMessageDto(
      {final String? status,
      final String? message,
      final List<MessageDto>? messages}) = _$ReceiveMessageDtoImpl;
  const _ReceiveMessageDto._() : super._();

  factory _ReceiveMessageDto.fromJson(Map<String, dynamic> json) =
      _$ReceiveMessageDtoImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<MessageDto>? get messages;

  /// Create a copy of ReceiveMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveMessageDtoImplCopyWith<_$ReceiveMessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
