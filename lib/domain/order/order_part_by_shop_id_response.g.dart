// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_part_by_shop_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPartByShopIdResponseImpl _$$OrderPartByShopIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPartByShopIdResponseImpl(
      orderParts: (json['orderParts'] as List<dynamic>)
          .map((e) => OrderPartMainInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderPartByShopIdResponseImplToJson(
        _$OrderPartByShopIdResponseImpl instance) =>
    <String, dynamic>{
      'orderParts': instance.orderParts,
    };
