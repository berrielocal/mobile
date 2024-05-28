// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopUpdateRequestImpl _$$ShopUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopUpdateRequestImpl(
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ShopUpdateRequestImplToJson(
    _$ShopUpdateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('email', instance.email);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('categories', instance.categories);
  return val;
}
