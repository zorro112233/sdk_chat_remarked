// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../receive_message.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiveMessageDto _$ReceiveMessageDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ReceiveMessageDto',
      json,
      ($checkedConvert) {
        final val = _ReceiveMessageDto(
          status: $checkedConvert('status', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ReceiveMessageDtoToJson(_ReceiveMessageDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
