// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_main_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopMainInfoImpl _$$ShopMainInfoImplFromJson(Map<String, dynamic> json) =>
    _$ShopMainInfoImpl(
      shopId: json['shopId'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      matchLevel: (json['matchLevel'] as num?)?.toDouble(),
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$ShopMainInfoImplToJson(_$ShopMainInfoImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'matchLevel': instance.matchLevel,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
