// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderCreateRequestImpl _$$OrderCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderCreateRequestImpl(
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$OrderCreateRequestImplToJson(
    _$OrderCreateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  return val;
}
