// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      productId: json['productId'] as int?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      maxSize: json['maxSize'] as int?,
      minSize: json['minSize'] as int?,
      units: json['units'] as String?,
      shopId: json['shopId'] as int?,
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'cost': instance.cost,
      'maxSize': instance.maxSize,
      'minSize': instance.minSize,
      'units': instance.units,
      'shopId': instance.shopId,
    };
