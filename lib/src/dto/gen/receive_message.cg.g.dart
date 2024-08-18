// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../receive_message.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiveMessageDtoImpl _$$ReceiveMessageDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ReceiveMessageDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ReceiveMessageDtoImpl(
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReceiveMessageDtoImplToJson(
        _$ReceiveMessageDtoImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
