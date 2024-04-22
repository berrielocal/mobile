// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopListResponseImpl _$$ShopListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopListResponseImpl(
      shops: (json['shops'] as List<dynamic>)
          .map((e) => ShopMainInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopListResponseImplToJson(
        _$ShopListResponseImpl instance) =>
    <String, dynamic>{
      'shops': instance.shops,
    };
