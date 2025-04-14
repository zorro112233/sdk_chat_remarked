// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../message.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonImpl _$$ButtonImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$ButtonImpl',
      json,
      ($checkedConvert) {
        final val = _$ButtonImpl(
          text: $checkedConvert('text', (v) => v as String),
          callbackData: $checkedConvert('callback_data', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'callbackData': 'callback_data'},
    );

Map<String, dynamic> _$$ButtonImplToJson(_$ButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'callback_data': instance.callbackData,
    };
