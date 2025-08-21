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
          id: $checkedConvert('id', (v) => v),
          uuid: $checkedConvert('uuid', (v) => v as String?),
          timestamp: $checkedConvert('timestamp', (v) => v),
          text: $checkedConvert('text', (v) => v as String?),
          direction: $checkedConvert('direction', (v) => v as String?),
          to: $checkedConvert('to', (v) => v as String?),
          attachment: $checkedConvert('attachment', (v) => v as String?),
          extra: $checkedConvert(
              'extra',
              (v) => v == null
                  ? null
                  : ExtraDto.fromJson(v as Map<String, dynamic>)),
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
      'extra': instance.extra?.toJson(),
    };

_$ExtraDtoImpl _$$ExtraDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ExtraDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ExtraDtoImpl(
          buttons: $checkedConvert('buttons', (v) => v as String?),
          chainId: $checkedConvert('chain_id', (v) => v as String?),
          scenarioStepId: $checkedConvert('scenario_step_id', (v) => v),
        );
        return val;
      },
      fieldKeyMap: const {
        'chainId': 'chain_id',
        'scenarioStepId': 'scenario_step_id'
      },
    );

Map<String, dynamic> _$$ExtraDtoImplToJson(_$ExtraDtoImpl instance) =>
    <String, dynamic>{
      'buttons': instance.buttons,
      'chain_id': instance.chainId,
      'scenario_step_id': instance.scenarioStepId,
    };

_$ButtonDtoImpl _$$ButtonDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ButtonDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ButtonDtoImpl(
          text: $checkedConvert('text', (v) => v as String?),
          callbackData: $checkedConvert('callback_data', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'callbackData': 'callback_data'},
    );

Map<String, dynamic> _$$ButtonDtoImplToJson(_$ButtonDtoImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'callback_data': instance.callbackData,
    };
