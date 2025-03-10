// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../meta.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaDtoImpl _$$MetaDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MetaDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$MetaDtoImpl(
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          perPage: $checkedConvert('per_page', (v) => (v as num?)?.toInt()),
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
          idOrder: $checkedConvert('id_order', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'perPage': 'per_page', 'idOrder': 'id_order'},
    );

Map<String, dynamic> _$$MetaDtoImplToJson(_$MetaDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'count': instance.count,
      'total': instance.total,
      'id_order': instance.idOrder,
    };
