// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../message.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MessageDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$MessageDtoImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          uuid: $checkedConvert('uuid', (v) => v as String?),
          timestamp: $checkedConvert('timestamp', (v) => (v as num?)?.toInt()),
          text: $checkedConvert('text', (v) => v as String?),
          direction: $checkedConvert('direction', (v) => v as String?),
          to: $checkedConvert('to', (v) => (v as num?)?.toInt()),
          attachment: $checkedConvert('attachment', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'timestamp': instance.timestamp,
      'text': instance.text,
      'direction': instance.direction,
      'to': instance.to,
      'attachment': instance.attachment,
    };
