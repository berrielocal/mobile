// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_modify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModifyRequestImpl _$$ProductModifyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductModifyRequestImpl(
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      maxSize: json['maxSize'] as int?,
      minSize: json['minSize'] as int?,
      units: json['units'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductModifyRequestImplToJson(
    _$ProductModifyRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('cost', instance.cost);
  writeNotNull('maxSize', instance.maxSize);
  writeNotNull('minSize', instance.minSize);
  writeNotNull('units', instance.units);
  writeNotNull('categories', instance.categories);
  return val;
}
