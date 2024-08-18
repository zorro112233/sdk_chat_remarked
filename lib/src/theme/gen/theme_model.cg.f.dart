// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../theme_model.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeModel {
  ThemeData get data => throw _privateConstructorUsedError;
  ThemeMode get mode => throw _privateConstructorUsedError;
  SystemUiOverlayStyle get systemUiOverlayStyle =>
      throw _privateConstructorUsedError;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) then) =
      _$ThemeModelCopyWithImpl<$Res, ThemeModel>;
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode mode,
      SystemUiOverlayStyle systemUiOverlayStyle});
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res, $Val extends ThemeModel>
    implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? mode = null,
    Object? systemUiOverlayStyle = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      systemUiOverlayStyle: null == systemUiOverlayStyle
          ? _value.systemUiOverlayStyle
          : systemUiOverlayStyle // ignore: cast_nullable_to_non_nullable
              as SystemUiOverlayStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeModelImplCopyWith<$Res>
    implements $ThemeModelCopyWith<$Res> {
  factory _$$ThemeModelImplCopyWith(
          _$ThemeModelImpl value, $Res Function(_$ThemeModelImpl) then) =
      __$$ThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode mode,
      SystemUiOverlayStyle systemUiOverlayStyle});
}

/// @nodoc
class __$$ThemeModelImplCopyWithImpl<$Res>
    extends _$ThemeModelCopyWithImpl<$Res, _$ThemeModelImpl>
    implements _$$ThemeModelImplCopyWith<$Res> {
  __$$ThemeModelImplCopyWithImpl(
      _$ThemeModelImpl _value, $Res Function(_$ThemeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? mode = null,
    Object? systemUiOverlayStyle = null,
  }) {
    return _then(_$ThemeModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      systemUiOverlayStyle: null == systemUiOverlayStyle
          ? _value.systemUiOverlayStyle
          : systemUiOverlayStyle // ignore: cast_nullable_to_non_nullable
              as SystemUiOverlayStyle,
    ));
  }
}

/// @nodoc

class _$ThemeModelImpl extends _ThemeModel {
  const _$ThemeModelImpl(
      {required this.data,
      required this.mode,
      required this.systemUiOverlayStyle})
      : super._();

  @override
  final ThemeData data;
  @override
  final ThemeMode mode;
  @override
  final SystemUiOverlayStyle systemUiOverlayStyle;

  @override
  String toString() {
    return 'ThemeModel(data: $data, mode: $mode, systemUiOverlayStyle: $systemUiOverlayStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.systemUiOverlayStyle, systemUiOverlayStyle) ||
                other.systemUiOverlayStyle == systemUiOverlayStyle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, mode, systemUiOverlayStyle);

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModelImplCopyWith<_$ThemeModelImpl> get copyWith =>
      __$$ThemeModelImplCopyWithImpl<_$ThemeModelImpl>(this, _$identity);
}

abstract class _ThemeModel extends ThemeModel {
  const factory _ThemeModel(
          {required final ThemeData data,
          required final ThemeMode mode,
          required final SystemUiOverlayStyle systemUiOverlayStyle}) =
      _$ThemeModelImpl;
  const _ThemeModel._() : super._();

  @override
  ThemeData get data;
  @override
  ThemeMode get mode;
  @override
  SystemUiOverlayStyle get systemUiOverlayStyle;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeModelImplCopyWith<_$ThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
