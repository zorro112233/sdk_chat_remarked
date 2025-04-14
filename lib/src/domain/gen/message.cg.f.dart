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

/// @nodoc
mixin _$Message {
  String get to => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  Extra? get extra => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  bool get isOutgoing => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String to,
      String text,
      String direction,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime timestamp,
      String uuid,
      int id,
      Extra? extra,
      String attachment,
      bool isOutgoing});

  $ExtraCopyWith<$Res>? get extra;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? text = null,
    Object? direction = null,
    Object? timestamp = null,
    Object? uuid = null,
    Object? id = null,
    Object? extra = freezed,
    Object? attachment = null,
    Object? isOutgoing = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra?,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      isOutgoing: null == isOutgoing
          ? _value.isOutgoing
          : isOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      String text,
      String direction,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime timestamp,
      String uuid,
      int id,
      Extra? extra,
      String attachment,
      bool isOutgoing});

  @override
  $ExtraCopyWith<$Res>? get extra;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? text = null,
    Object? direction = null,
    Object? timestamp = null,
    Object? uuid = null,
    Object? id = null,
    Object? extra = freezed,
    Object? attachment = null,
    Object? isOutgoing = null,
  }) {
    return _then(_$MessageImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra?,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      isOutgoing: null == isOutgoing
          ? _value.isOutgoing
          : isOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.to,
      required this.text,
      required this.direction,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
      required this.timestamp,
      required this.uuid,
      required this.id,
      this.extra,
      required this.attachment,
      required this.isOutgoing});

  @override
  final String to;
  @override
  final String text;
  @override
  final String direction;
  @override
  @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
  final DateTime timestamp;
  @override
  final String uuid;
  @override
  final int id;
  @override
  final Extra? extra;
  @override
  final String attachment;
  @override
  final bool isOutgoing;

  @override
  String toString() {
    return 'Message(to: $to, text: $text, direction: $direction, timestamp: $timestamp, uuid: $uuid, id: $id, extra: $extra, attachment: $attachment, isOutgoing: $isOutgoing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.isOutgoing, isOutgoing) ||
                other.isOutgoing == isOutgoing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to, text, direction, timestamp,
      uuid, id, extra, attachment, isOutgoing);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String to,
      required final String text,
      required final String direction,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
      required final DateTime timestamp,
      required final String uuid,
      required final int id,
      final Extra? extra,
      required final String attachment,
      required final bool isOutgoing}) = _$MessageImpl;

  @override
  String get to;
  @override
  String get text;
  @override
  String get direction;
  @override
  @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime get timestamp;
  @override
  String get uuid;
  @override
  int get id;
  @override
  Extra? get extra;
  @override
  String get attachment;
  @override
  bool get isOutgoing;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Extra {
  @JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
  List<Button> get buttons => throw _privateConstructorUsedError;
  String get chainId => throw _privateConstructorUsedError;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
      List<Button> buttons,
      String chainId});
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = null,
    Object? chainId = null,
  }) {
    return _then(_value.copyWith(
      buttons: null == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<Button>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
      List<Button> buttons,
      String chainId});
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = null,
    Object? chainId = null,
  }) {
    return _then(_$ExtraImpl(
      buttons: null == buttons
          ? _value._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<Button>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExtraImpl implements _Extra {
  const _$ExtraImpl(
      {@JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
      required final List<Button> buttons,
      required this.chainId})
      : _buttons = buttons;

  final List<Button> _buttons;
  @override
  @JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
  List<Button> get buttons {
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buttons);
  }

  @override
  final String chainId;

  @override
  String toString() {
    return 'Extra(buttons: $buttons, chainId: $chainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraImpl &&
            const DeepCollectionEquality().equals(other._buttons, _buttons) &&
            (identical(other.chainId, chainId) || other.chainId == chainId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_buttons), chainId);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);
}

abstract class _Extra implements Extra {
  const factory _Extra(
      {@JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
      required final List<Button> buttons,
      required final String chainId}) = _$ExtraImpl;

  @override
  @JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
  List<Button> get buttons;
  @override
  String get chainId;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Button _$ButtonFromJson(Map<String, dynamic> json) {
  return _Button.fromJson(json);
}

/// @nodoc
mixin _$Button {
  String get text => throw _privateConstructorUsedError;
  String get callbackData => throw _privateConstructorUsedError;

  /// Serializes this Button to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Button
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtonCopyWith<Button> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonCopyWith<$Res> {
  factory $ButtonCopyWith(Button value, $Res Function(Button) then) =
      _$ButtonCopyWithImpl<$Res, Button>;
  @useResult
  $Res call({String text, String callbackData});
}

/// @nodoc
class _$ButtonCopyWithImpl<$Res, $Val extends Button>
    implements $ButtonCopyWith<$Res> {
  _$ButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Button
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? callbackData = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: null == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonImplCopyWith<$Res> implements $ButtonCopyWith<$Res> {
  factory _$$ButtonImplCopyWith(
          _$ButtonImpl value, $Res Function(_$ButtonImpl) then) =
      __$$ButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String callbackData});
}

/// @nodoc
class __$$ButtonImplCopyWithImpl<$Res>
    extends _$ButtonCopyWithImpl<$Res, _$ButtonImpl>
    implements _$$ButtonImplCopyWith<$Res> {
  __$$ButtonImplCopyWithImpl(
      _$ButtonImpl _value, $Res Function(_$ButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Button
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? callbackData = null,
  }) {
    return _then(_$ButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      callbackData: null == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonImpl implements _Button {
  const _$ButtonImpl({required this.text, required this.callbackData});

  factory _$ButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonImplFromJson(json);

  @override
  final String text;
  @override
  final String callbackData;

  @override
  String toString() {
    return 'Button(text: $text, callbackData: $callbackData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.callbackData, callbackData) ||
                other.callbackData == callbackData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, callbackData);

  /// Create a copy of Button
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonImplCopyWith<_$ButtonImpl> get copyWith =>
      __$$ButtonImplCopyWithImpl<_$ButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonImplToJson(
      this,
    );
  }
}

abstract class _Button implements Button {
  const factory _Button(
      {required final String text,
      required final String callbackData}) = _$ButtonImpl;

  factory _Button.fromJson(Map<String, dynamic> json) = _$ButtonImpl.fromJson;

  @override
  String get text;
  @override
  String get callbackData;

  /// Create a copy of Button
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonImplCopyWith<_$ButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
