// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../messages.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllMessagesDto _$AllMessagesDtoFromJson(Map<String, dynamic> json) {
  return _AllMessagesDto.fromJson(json);
}

/// @nodoc
mixin _$AllMessagesDto {
  UnseenDto? get unseen => throw _privateConstructorUsedError;

  /// Serializes this AllMessagesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllMessagesDtoCopyWith<AllMessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessagesDtoCopyWith<$Res> {
  factory $AllMessagesDtoCopyWith(
          AllMessagesDto value, $Res Function(AllMessagesDto) then) =
      _$AllMessagesDtoCopyWithImpl<$Res, AllMessagesDto>;
  @useResult
  $Res call({UnseenDto? unseen});

  $UnseenDtoCopyWith<$Res>? get unseen;
}

/// @nodoc
class _$AllMessagesDtoCopyWithImpl<$Res, $Val extends AllMessagesDto>
    implements $AllMessagesDtoCopyWith<$Res> {
  _$AllMessagesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = freezed,
  }) {
    return _then(_value.copyWith(
      unseen: freezed == unseen
          ? _value.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as UnseenDto?,
    ) as $Val);
  }

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenDtoCopyWith<$Res>? get unseen {
    if (_value.unseen == null) {
      return null;
    }

    return $UnseenDtoCopyWith<$Res>(_value.unseen!, (value) {
      return _then(_value.copyWith(unseen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllMessagesDtoImplCopyWith<$Res>
    implements $AllMessagesDtoCopyWith<$Res> {
  factory _$$AllMessagesDtoImplCopyWith(_$AllMessagesDtoImpl value,
          $Res Function(_$AllMessagesDtoImpl) then) =
      __$$AllMessagesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnseenDto? unseen});

  @override
  $UnseenDtoCopyWith<$Res>? get unseen;
}

/// @nodoc
class __$$AllMessagesDtoImplCopyWithImpl<$Res>
    extends _$AllMessagesDtoCopyWithImpl<$Res, _$AllMessagesDtoImpl>
    implements _$$AllMessagesDtoImplCopyWith<$Res> {
  __$$AllMessagesDtoImplCopyWithImpl(
      _$AllMessagesDtoImpl _value, $Res Function(_$AllMessagesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = freezed,
  }) {
    return _then(_$AllMessagesDtoImpl(
      unseen: freezed == unseen
          ? _value.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as UnseenDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllMessagesDtoImpl extends _AllMessagesDto {
  const _$AllMessagesDtoImpl({this.unseen}) : super._();

  factory _$AllMessagesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllMessagesDtoImplFromJson(json);

  @override
  final UnseenDto? unseen;

  @override
  String toString() {
    return 'AllMessagesDto(unseen: $unseen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessagesDtoImpl &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMessagesDtoImplCopyWith<_$AllMessagesDtoImpl> get copyWith =>
      __$$AllMessagesDtoImplCopyWithImpl<_$AllMessagesDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllMessagesDtoImplToJson(
      this,
    );
  }
}

abstract class _AllMessagesDto extends AllMessagesDto {
  const factory _AllMessagesDto({final UnseenDto? unseen}) =
      _$AllMessagesDtoImpl;
  const _AllMessagesDto._() : super._();

  factory _AllMessagesDto.fromJson(Map<String, dynamic> json) =
      _$AllMessagesDtoImpl.fromJson;

  @override
  UnseenDto? get unseen;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllMessagesDtoImplCopyWith<_$AllMessagesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnseenDto _$UnseenDtoFromJson(Map<String, dynamic> json) {
  return _UnseenDto.fromJson(json);
}

/// @nodoc
mixin _$UnseenDto {
  int? get count => throw _privateConstructorUsedError;
  List<MessageDto>? get messages => throw _privateConstructorUsedError;
  MetaDto? get meta => throw _privateConstructorUsedError;

  /// Serializes this UnseenDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnseenDtoCopyWith<UnseenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnseenDtoCopyWith<$Res> {
  factory $UnseenDtoCopyWith(UnseenDto value, $Res Function(UnseenDto) then) =
      _$UnseenDtoCopyWithImpl<$Res, UnseenDto>;
  @useResult
  $Res call({int? count, List<MessageDto>? messages, MetaDto? meta});

  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UnseenDtoCopyWithImpl<$Res, $Val extends UnseenDto>
    implements $UnseenDtoCopyWith<$Res> {
  _$UnseenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ) as $Val);
  }

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDtoCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnseenDtoImplCopyWith<$Res>
    implements $UnseenDtoCopyWith<$Res> {
  factory _$$UnseenDtoImplCopyWith(
          _$UnseenDtoImpl value, $Res Function(_$UnseenDtoImpl) then) =
      __$$UnseenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<MessageDto>? messages, MetaDto? meta});

  @override
  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$UnseenDtoImplCopyWithImpl<$Res>
    extends _$UnseenDtoCopyWithImpl<$Res, _$UnseenDtoImpl>
    implements _$$UnseenDtoImplCopyWith<$Res> {
  __$$UnseenDtoImplCopyWithImpl(
      _$UnseenDtoImpl _value, $Res Function(_$UnseenDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$UnseenDtoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnseenDtoImpl extends _UnseenDto {
  const _$UnseenDtoImpl(
      {this.count, final List<MessageDto>? messages, this.meta})
      : _messages = messages,
        super._();

  factory _$UnseenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnseenDtoImplFromJson(json);

  @override
  final int? count;
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
  final MetaDto? meta;

  @override
  String toString() {
    return 'UnseenDto(count: $count, messages: $messages, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnseenDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_messages), meta);

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnseenDtoImplCopyWith<_$UnseenDtoImpl> get copyWith =>
      __$$UnseenDtoImplCopyWithImpl<_$UnseenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnseenDtoImplToJson(
      this,
    );
  }
}

abstract class _UnseenDto extends UnseenDto {
  const factory _UnseenDto(
      {final int? count,
      final List<MessageDto>? messages,
      final MetaDto? meta}) = _$UnseenDtoImpl;
  const _UnseenDto._() : super._();

  factory _UnseenDto.fromJson(Map<String, dynamic> json) =
      _$UnseenDtoImpl.fromJson;

  @override
  int? get count;
  @override
  List<MessageDto>? get messages;
  @override
  MetaDto? get meta;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnseenDtoImplCopyWith<_$UnseenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
