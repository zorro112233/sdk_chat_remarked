// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../messages.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllMessagesDtoImpl _$$AllMessagesDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AllMessagesDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$AllMessagesDtoImpl(
          unseen: $checkedConvert(
              'unseen',
              (v) => v == null
                  ? null
                  : UnseenDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AllMessagesDtoImplToJson(
        _$AllMessagesDtoImpl instance) =>
    <String, dynamic>{
      'unseen': instance.unseen?.toJson(),
    };

_$UnseenDtoImpl _$$UnseenDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UnseenDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$UnseenDtoImpl(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UnseenDtoImplToJson(_$UnseenDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
