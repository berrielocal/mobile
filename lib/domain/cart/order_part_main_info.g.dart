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
      orderPartId: json['orderPartId'] as int?,
      status: json['status'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      orderedAt: json['orderedAt'] == null
          ? null
          : DateTime.parse(json['orderedAt'] as String),
    );

Map<String, dynamic> _$$OrderPartMainInfoImplToJson(
        _$OrderPartMainInfoImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'size': instance.size,
      'orderPartId': instance.orderPartId,
      'status': instance.status,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'orderedAt': instance.orderedAt?.toIso8601String(),
    };
