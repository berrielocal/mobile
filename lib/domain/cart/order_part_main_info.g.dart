// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_part_main_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPartMainInfoImpl _$$OrderPartMainInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPartMainInfoImpl(
      productId: json['productId'] as int?,
      size: json['size'] as int?,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$OrderPartMainInfoImplToJson(
        _$OrderPartMainInfoImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'size': instance.size,
      'status': instance.status,
    };
