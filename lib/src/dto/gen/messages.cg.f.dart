// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../messages.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllMessagesDto {
  UnseenDto? get unseen;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllMessagesDtoCopyWith<AllMessagesDto> get copyWith =>
      _$AllMessagesDtoCopyWithImpl<AllMessagesDto>(
          this as AllMessagesDto, _$identity);

  /// Serializes this AllMessagesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllMessagesDto &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  @override
  String toString() {
    return 'AllMessagesDto(unseen: $unseen)';
  }
}

/// @nodoc
abstract mixin class $AllMessagesDtoCopyWith<$Res> {
  factory $AllMessagesDtoCopyWith(
          AllMessagesDto value, $Res Function(AllMessagesDto) _then) =
      _$AllMessagesDtoCopyWithImpl;
  @useResult
  $Res call({UnseenDto? unseen});

  $UnseenDtoCopyWith<$Res>? get unseen;
}

/// @nodoc
class _$AllMessagesDtoCopyWithImpl<$Res>
    implements $AllMessagesDtoCopyWith<$Res> {
  _$AllMessagesDtoCopyWithImpl(this._self, this._then);

  final AllMessagesDto _self;
  final $Res Function(AllMessagesDto) _then;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = freezed,
  }) {
    return _then(_self.copyWith(
      unseen: freezed == unseen
          ? _self.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as UnseenDto?,
    ));
  }

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenDtoCopyWith<$Res>? get unseen {
    if (_self.unseen == null) {
      return null;
    }

    return $UnseenDtoCopyWith<$Res>(_self.unseen!, (value) {
      return _then(_self.copyWith(unseen: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AllMessagesDto extends AllMessagesDto {
  const _AllMessagesDto({this.unseen}) : super._();
  factory _AllMessagesDto.fromJson(Map<String, dynamic> json) =>
      _$AllMessagesDtoFromJson(json);

  @override
  final UnseenDto? unseen;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllMessagesDtoCopyWith<_AllMessagesDto> get copyWith =>
      __$AllMessagesDtoCopyWithImpl<_AllMessagesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllMessagesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllMessagesDto &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  @override
  String toString() {
    return 'AllMessagesDto(unseen: $unseen)';
  }
}

/// @nodoc
abstract mixin class _$AllMessagesDtoCopyWith<$Res>
    implements $AllMessagesDtoCopyWith<$Res> {
  factory _$AllMessagesDtoCopyWith(
          _AllMessagesDto value, $Res Function(_AllMessagesDto) _then) =
      __$AllMessagesDtoCopyWithImpl;
  @override
  @useResult
  $Res call({UnseenDto? unseen});

  @override
  $UnseenDtoCopyWith<$Res>? get unseen;
}

/// @nodoc
class __$AllMessagesDtoCopyWithImpl<$Res>
    implements _$AllMessagesDtoCopyWith<$Res> {
  __$AllMessagesDtoCopyWithImpl(this._self, this._then);

  final _AllMessagesDto _self;
  final $Res Function(_AllMessagesDto) _then;

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unseen = freezed,
  }) {
    return _then(_AllMessagesDto(
      unseen: freezed == unseen
          ? _self.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as UnseenDto?,
    ));
  }

  /// Create a copy of AllMessagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenDtoCopyWith<$Res>? get unseen {
    if (_self.unseen == null) {
      return null;
    }

    return $UnseenDtoCopyWith<$Res>(_self.unseen!, (value) {
      return _then(_self.copyWith(unseen: value));
    });
  }
}

/// @nodoc
mixin _$UnseenDto {
  int? get count;
  List<MessageDto>? get messages;
  MetaDto? get meta;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnseenDtoCopyWith<UnseenDto> get copyWith =>
      _$UnseenDtoCopyWithImpl<UnseenDto>(this as UnseenDto, _$identity);

  /// Serializes this UnseenDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnseenDto &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(messages), meta);

  @override
  String toString() {
    return 'UnseenDto(count: $count, messages: $messages, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $UnseenDtoCopyWith<$Res> {
  factory $UnseenDtoCopyWith(UnseenDto value, $Res Function(UnseenDto) _then) =
      _$UnseenDtoCopyWithImpl;
  @useResult
  $Res call({int? count, List<MessageDto>? messages, MetaDto? meta});

  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UnseenDtoCopyWithImpl<$Res> implements $UnseenDtoCopyWith<$Res> {
  _$UnseenDtoCopyWithImpl(this._self, this._then);

  final UnseenDto _self;
  final $Res Function(UnseenDto) _then;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_self.copyWith(
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ));
  }

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $MetaDtoCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UnseenDto extends UnseenDto {
  const _UnseenDto({this.count, final List<MessageDto>? messages, this.meta})
      : _messages = messages,
        super._();
  factory _UnseenDto.fromJson(Map<String, dynamic> json) =>
      _$UnseenDtoFromJson(json);

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

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnseenDtoCopyWith<_UnseenDto> get copyWith =>
      __$UnseenDtoCopyWithImpl<_UnseenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnseenDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnseenDto &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_messages), meta);

  @override
  String toString() {
    return 'UnseenDto(count: $count, messages: $messages, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$UnseenDtoCopyWith<$Res>
    implements $UnseenDtoCopyWith<$Res> {
  factory _$UnseenDtoCopyWith(
          _UnseenDto value, $Res Function(_UnseenDto) _then) =
      __$UnseenDtoCopyWithImpl;
  @override
  @useResult
  $Res call({int? count, List<MessageDto>? messages, MetaDto? meta});

  @override
  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$UnseenDtoCopyWithImpl<$Res> implements _$UnseenDtoCopyWith<$Res> {
  __$UnseenDtoCopyWithImpl(this._self, this._then);

  final _UnseenDto _self;
  final $Res Function(_UnseenDto) _then;

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_UnseenDto(
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ));
  }

  /// Create a copy of UnseenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $MetaDtoCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
