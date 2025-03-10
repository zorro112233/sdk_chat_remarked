// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../theme_model.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeModel {
  ThemeData get data;
  ThemeMode get mode;
  SystemUiOverlayStyle get systemUiOverlayStyle;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      _$ThemeModelCopyWithImpl<ThemeModel>(this as ThemeModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.systemUiOverlayStyle, systemUiOverlayStyle) ||
                other.systemUiOverlayStyle == systemUiOverlayStyle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, mode, systemUiOverlayStyle);

  @override
  String toString() {
    return 'ThemeModel(data: $data, mode: $mode, systemUiOverlayStyle: $systemUiOverlayStyle)';
  }
}

/// @nodoc
abstract mixin class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) _then) =
      _$ThemeModelCopyWithImpl;
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode mode,
      SystemUiOverlayStyle systemUiOverlayStyle});
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res> implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._self, this._then);

  final ThemeModel _self;
  final $Res Function(ThemeModel) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? mode = null,
    Object? systemUiOverlayStyle = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      systemUiOverlayStyle: null == systemUiOverlayStyle
          ? _self.systemUiOverlayStyle
          : systemUiOverlayStyle // ignore: cast_nullable_to_non_nullable
              as SystemUiOverlayStyle,
    ));
  }
}

/// @nodoc

class _ThemeModel extends ThemeModel {
  const _ThemeModel(
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

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeModelCopyWith<_ThemeModel> get copyWith =>
      __$ThemeModelCopyWithImpl<_ThemeModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.systemUiOverlayStyle, systemUiOverlayStyle) ||
                other.systemUiOverlayStyle == systemUiOverlayStyle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, mode, systemUiOverlayStyle);

  @override
  String toString() {
    return 'ThemeModel(data: $data, mode: $mode, systemUiOverlayStyle: $systemUiOverlayStyle)';
  }
}

/// @nodoc
abstract mixin class _$ThemeModelCopyWith<$Res>
    implements $ThemeModelCopyWith<$Res> {
  factory _$ThemeModelCopyWith(
          _ThemeModel value, $Res Function(_ThemeModel) _then) =
      __$ThemeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode mode,
      SystemUiOverlayStyle systemUiOverlayStyle});
}

/// @nodoc
class __$ThemeModelCopyWithImpl<$Res> implements _$ThemeModelCopyWith<$Res> {
  __$ThemeModelCopyWithImpl(this._self, this._then);

  final _ThemeModel _self;
  final $Res Function(_ThemeModel) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? mode = null,
    Object? systemUiOverlayStyle = null,
  }) {
    return _then(_ThemeModel(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      systemUiOverlayStyle: null == systemUiOverlayStyle
          ? _self.systemUiOverlayStyle
          : systemUiOverlayStyle // ignore: cast_nullable_to_non_nullable
              as SystemUiOverlayStyle,
    ));
  }
}

// dart format on
