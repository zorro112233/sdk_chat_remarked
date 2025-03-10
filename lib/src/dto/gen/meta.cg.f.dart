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
mixin _$MetaDto {
  int? get page;
  int? get perPage;
  int? get count;
  int? get total;
  int? get idOrder;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<MetaDto> get copyWith =>
      _$MetaDtoCopyWithImpl<MetaDto>(this as MetaDto, _$identity);

  /// Serializes this MetaDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MetaDto &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.idOrder, idOrder) || other.idOrder == idOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, count, total, idOrder);

  @override
  String toString() {
    return 'MetaDto(page: $page, perPage: $perPage, count: $count, total: $total, idOrder: $idOrder)';
  }
}

/// @nodoc
abstract mixin class $MetaDtoCopyWith<$Res> {
  factory $MetaDtoCopyWith(MetaDto value, $Res Function(MetaDto) _then) =
      _$MetaDtoCopyWithImpl;
  @useResult
  $Res call({int? page, int? perPage, int? count, int? total, int? idOrder});
}

/// @nodoc
class _$MetaDtoCopyWithImpl<$Res> implements $MetaDtoCopyWith<$Res> {
  _$MetaDtoCopyWithImpl(this._self, this._then);

  final MetaDto _self;
  final $Res Function(MetaDto) _then;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? count = freezed,
    Object? total = freezed,
    Object? idOrder = freezed,
  }) {
    return _then(_self.copyWith(
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrder: freezed == idOrder
          ? _self.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MetaDto extends MetaDto {
  const _MetaDto(
      {this.page, this.perPage, this.count, this.total, this.idOrder})
      : super._();
  factory _MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);

  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final int? count;
  @override
  final int? total;
  @override
  final int? idOrder;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetaDtoCopyWith<_MetaDto> get copyWith =>
      __$MetaDtoCopyWithImpl<_MetaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MetaDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaDto &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.idOrder, idOrder) || other.idOrder == idOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, count, total, idOrder);

  @override
  String toString() {
    return 'MetaDto(page: $page, perPage: $perPage, count: $count, total: $total, idOrder: $idOrder)';
  }
}

/// @nodoc
abstract mixin class _$MetaDtoCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$MetaDtoCopyWith(_MetaDto value, $Res Function(_MetaDto) _then) =
      __$MetaDtoCopyWithImpl;
  @override
  @useResult
  $Res call({int? page, int? perPage, int? count, int? total, int? idOrder});
}

/// @nodoc
class __$MetaDtoCopyWithImpl<$Res> implements _$MetaDtoCopyWith<$Res> {
  __$MetaDtoCopyWithImpl(this._self, this._then);

  final _MetaDto _self;
  final $Res Function(_MetaDto) _then;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? count = freezed,
    Object? total = freezed,
    Object? idOrder = freezed,
  }) {
    return _then(_MetaDto(
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrder: freezed == idOrder
          ? _self.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
