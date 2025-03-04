// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../messages.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllMessagesDto _$AllMessagesDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_AllMessagesDto',
      json,
      ($checkedConvert) {
        final val = _AllMessagesDto(
          unseen: $checkedConvert(
              'unseen',
              (v) => v == null
                  ? null
                  : UnseenDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AllMessagesDtoToJson(_AllMessagesDto instance) =>
    <String, dynamic>{
      'unseen': instance.unseen?.toJson(),
    };

_UnseenDto _$UnseenDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_UnseenDto',
      json,
      ($checkedConvert) {
        final val = _UnseenDto(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
          meta: $checkedConvert(
              'meta',
              (v) => v == null
                  ? null
                  : MetaDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UnseenDtoToJson(_UnseenDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };
