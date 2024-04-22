// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_part_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPartListResponseImpl _$$OrderPartListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPartListResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderPartMainInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderPartListResponseImplToJson(
        _$OrderPartListResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
