// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../meta.cg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meta {
  int get page;
  int get perPage;
  int get count;
  int get total;
  int get idOrder;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetaCopyWith<Meta> get copyWith =>
      _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meta &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.idOrder, idOrder) || other.idOrder == idOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, count, total, idOrder);

  @override
  String toString() {
    return 'Meta(page: $page, perPage: $perPage, count: $count, total: $total, idOrder: $idOrder)';
  }
}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) =
      _$MetaCopyWithImpl;
  @useResult
  $Res call({int page, int perPage, int count, int total, int idOrder});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? count = null,
    Object? total = null,
    Object? idOrder = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      idOrder: null == idOrder
          ? _self.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Meta implements Meta {
  const _Meta(
      {required this.page,
      required this.perPage,
      required this.count,
      required this.total,
      required this.idOrder});

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int count;
  @override
  final int total;
  @override
  final int idOrder;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetaCopyWith<_Meta> get copyWith =>
      __$MetaCopyWithImpl<_Meta>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meta &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.idOrder, idOrder) || other.idOrder == idOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, count, total, idOrder);

  @override
  String toString() {
    return 'Meta(page: $page, perPage: $perPage, count: $count, total: $total, idOrder: $idOrder)';
  }
}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) =
      __$MetaCopyWithImpl;
  @override
  @useResult
  $Res call({int page, int perPage, int count, int total, int idOrder});
}

/// @nodoc
class __$MetaCopyWithImpl<$Res> implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? count = null,
    Object? total = null,
    Object? idOrder = null,
  }) {
    return _then(_Meta(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      idOrder: null == idOrder
          ? _self.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
