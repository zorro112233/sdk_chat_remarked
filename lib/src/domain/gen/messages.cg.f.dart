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
mixin _$AllMessages {
  Unseen get unseen;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllMessagesCopyWith<AllMessages> get copyWith =>
      _$AllMessagesCopyWithImpl<AllMessages>(this as AllMessages, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllMessages &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  @override
  String toString() {
    return 'AllMessages(unseen: $unseen)';
  }
}

/// @nodoc
abstract mixin class $AllMessagesCopyWith<$Res> {
  factory $AllMessagesCopyWith(
          AllMessages value, $Res Function(AllMessages) _then) =
      _$AllMessagesCopyWithImpl;
  @useResult
  $Res call({Unseen unseen});

  $UnseenCopyWith<$Res> get unseen;
}

/// @nodoc
class _$AllMessagesCopyWithImpl<$Res> implements $AllMessagesCopyWith<$Res> {
  _$AllMessagesCopyWithImpl(this._self, this._then);

  final AllMessages _self;
  final $Res Function(AllMessages) _then;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = null,
  }) {
    return _then(_self.copyWith(
      unseen: null == unseen
          ? _self.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as Unseen,
    ));
  }

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenCopyWith<$Res> get unseen {
    return $UnseenCopyWith<$Res>(_self.unseen, (value) {
      return _then(_self.copyWith(unseen: value));
    });
  }
}

/// @nodoc

class _AllMessages implements AllMessages {
  const _AllMessages({required this.unseen});

  @override
  final Unseen unseen;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllMessagesCopyWith<_AllMessages> get copyWith =>
      __$AllMessagesCopyWithImpl<_AllMessages>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllMessages &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  @override
  String toString() {
    return 'AllMessages(unseen: $unseen)';
  }
}

/// @nodoc
abstract mixin class _$AllMessagesCopyWith<$Res>
    implements $AllMessagesCopyWith<$Res> {
  factory _$AllMessagesCopyWith(
          _AllMessages value, $Res Function(_AllMessages) _then) =
      __$AllMessagesCopyWithImpl;
  @override
  @useResult
  $Res call({Unseen unseen});

  @override
  $UnseenCopyWith<$Res> get unseen;
}

/// @nodoc
class __$AllMessagesCopyWithImpl<$Res> implements _$AllMessagesCopyWith<$Res> {
  __$AllMessagesCopyWithImpl(this._self, this._then);

  final _AllMessages _self;
  final $Res Function(_AllMessages) _then;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unseen = null,
  }) {
    return _then(_AllMessages(
      unseen: null == unseen
          ? _self.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as Unseen,
    ));
  }

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenCopyWith<$Res> get unseen {
    return $UnseenCopyWith<$Res>(_self.unseen, (value) {
      return _then(_self.copyWith(unseen: value));
    });
  }
}

/// @nodoc
mixin _$Unseen {
  int get count;
  List<Message> get messages;
  Meta get meta;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnseenCopyWith<Unseen> get copyWith =>
      _$UnseenCopyWithImpl<Unseen>(this as Unseen, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unseen &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(messages), meta);

  @override
  String toString() {
    return 'Unseen(count: $count, messages: $messages, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $UnseenCopyWith<$Res> {
  factory $UnseenCopyWith(Unseen value, $Res Function(Unseen) _then) =
      _$UnseenCopyWithImpl;
  @useResult
  $Res call({int count, List<Message> messages, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$UnseenCopyWithImpl<$Res> implements $UnseenCopyWith<$Res> {
  _$UnseenCopyWithImpl(this._self, this._then);

  final Unseen _self;
  final $Res Function(Unseen) _then;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? messages = null,
    Object? meta = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc

class _Unseen implements Unseen {
  const _Unseen(
      {required this.count,
      required final List<Message> messages,
      required this.meta})
      : _messages = messages;

  @override
  final int count;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Meta meta;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnseenCopyWith<_Unseen> get copyWith =>
      __$UnseenCopyWithImpl<_Unseen>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unseen &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_messages), meta);

  @override
  String toString() {
    return 'Unseen(count: $count, messages: $messages, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$UnseenCopyWith<$Res> implements $UnseenCopyWith<$Res> {
  factory _$UnseenCopyWith(_Unseen value, $Res Function(_Unseen) _then) =
      __$UnseenCopyWithImpl;
  @override
  @useResult
  $Res call({int count, List<Message> messages, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$UnseenCopyWithImpl<$Res> implements _$UnseenCopyWith<$Res> {
  __$UnseenCopyWithImpl(this._self, this._then);

  final _Unseen _self;
  final $Res Function(_Unseen) _then;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? messages = null,
    Object? meta = null,
  }) {
    return _then(_Unseen(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
