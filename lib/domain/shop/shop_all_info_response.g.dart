// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_all_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopAllInfoResponseImpl _$$ShopAllInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopAllInfoResponseImpl(
      shopId: json['shopId'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      matchLevel: (json['matchLevel'] as num?)?.toDouble(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ShopAllInfoResponseImplToJson(
        _$ShopAllInfoResponseImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'matchLevel': instance.matchLevel,
      'categories': instance.categories,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'rating': instance.rating,
    };
