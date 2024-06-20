// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_order_status_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeOrderStatusRequestImpl _$$ChangeOrderStatusRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeOrderStatusRequestImpl(
      orderPartId: json['orderPartId'] as int?,
      newStatus: json['newStatus'] as String?,
    );

Map<String, dynamic> _$$ChangeOrderStatusRequestImplToJson(
    _$ChangeOrderStatusRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orderPartId', instance.orderPartId);
  writeNotNull('newStatus', instance.newStatus);
  return val;
}
