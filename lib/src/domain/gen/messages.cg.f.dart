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

/// @nodoc
mixin _$AllMessages {
  Unseen get unseen => throw _privateConstructorUsedError;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllMessagesCopyWith<AllMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessagesCopyWith<$Res> {
  factory $AllMessagesCopyWith(
          AllMessages value, $Res Function(AllMessages) then) =
      _$AllMessagesCopyWithImpl<$Res, AllMessages>;
  @useResult
  $Res call({Unseen unseen});

  $UnseenCopyWith<$Res> get unseen;
}

/// @nodoc
class _$AllMessagesCopyWithImpl<$Res, $Val extends AllMessages>
    implements $AllMessagesCopyWith<$Res> {
  _$AllMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = null,
  }) {
    return _then(_value.copyWith(
      unseen: null == unseen
          ? _value.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as Unseen,
    ) as $Val);
  }

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnseenCopyWith<$Res> get unseen {
    return $UnseenCopyWith<$Res>(_value.unseen, (value) {
      return _then(_value.copyWith(unseen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllMessagesImplCopyWith<$Res>
    implements $AllMessagesCopyWith<$Res> {
  factory _$$AllMessagesImplCopyWith(
          _$AllMessagesImpl value, $Res Function(_$AllMessagesImpl) then) =
      __$$AllMessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Unseen unseen});

  @override
  $UnseenCopyWith<$Res> get unseen;
}

/// @nodoc
class __$$AllMessagesImplCopyWithImpl<$Res>
    extends _$AllMessagesCopyWithImpl<$Res, _$AllMessagesImpl>
    implements _$$AllMessagesImplCopyWith<$Res> {
  __$$AllMessagesImplCopyWithImpl(
      _$AllMessagesImpl _value, $Res Function(_$AllMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseen = null,
  }) {
    return _then(_$AllMessagesImpl(
      unseen: null == unseen
          ? _value.unseen
          : unseen // ignore: cast_nullable_to_non_nullable
              as Unseen,
    ));
  }
}

/// @nodoc

class _$AllMessagesImpl implements _AllMessages {
  const _$AllMessagesImpl({required this.unseen});

  @override
  final Unseen unseen;

  @override
  String toString() {
    return 'AllMessages(unseen: $unseen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessagesImpl &&
            (identical(other.unseen, unseen) || other.unseen == unseen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unseen);

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMessagesImplCopyWith<_$AllMessagesImpl> get copyWith =>
      __$$AllMessagesImplCopyWithImpl<_$AllMessagesImpl>(this, _$identity);
}

abstract class _AllMessages implements AllMessages {
  const factory _AllMessages({required final Unseen unseen}) =
      _$AllMessagesImpl;

  @override
  Unseen get unseen;

  /// Create a copy of AllMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllMessagesImplCopyWith<_$AllMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Unseen {
  int get count => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnseenCopyWith<Unseen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnseenCopyWith<$Res> {
  factory $UnseenCopyWith(Unseen value, $Res Function(Unseen) then) =
      _$UnseenCopyWithImpl<$Res, Unseen>;
  @useResult
  $Res call({int count, List<Message> messages});
}

/// @nodoc
class _$UnseenCopyWithImpl<$Res, $Val extends Unseen>
    implements $UnseenCopyWith<$Res> {
  _$UnseenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnseenImplCopyWith<$Res> implements $UnseenCopyWith<$Res> {
  factory _$$UnseenImplCopyWith(
          _$UnseenImpl value, $Res Function(_$UnseenImpl) then) =
      __$$UnseenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Message> messages});
}

/// @nodoc
class __$$UnseenImplCopyWithImpl<$Res>
    extends _$UnseenCopyWithImpl<$Res, _$UnseenImpl>
    implements _$$UnseenImplCopyWith<$Res> {
  __$$UnseenImplCopyWithImpl(
      _$UnseenImpl _value, $Res Function(_$UnseenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? messages = null,
  }) {
    return _then(_$UnseenImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$UnseenImpl implements _Unseen {
  const _$UnseenImpl(
      {required this.count, required final List<Message> messages})
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
  String toString() {
    return 'Unseen(count: $count, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnseenImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnseenImplCopyWith<_$UnseenImpl> get copyWith =>
      __$$UnseenImplCopyWithImpl<_$UnseenImpl>(this, _$identity);
}

abstract class _Unseen implements Unseen {
  const factory _Unseen(
      {required final int count,
      required final List<Message> messages}) = _$UnseenImpl;

  @override
  int get count;
  @override
  List<Message> get messages;

  /// Create a copy of Unseen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnseenImplCopyWith<_$UnseenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
