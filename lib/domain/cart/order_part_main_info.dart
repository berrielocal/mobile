import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_part_main_info.freezed.dart';

part 'order_part_main_info.g.dart';

@freezed
class OrderPartMainInfo with _$OrderPartMainInfo {
  const factory OrderPartMainInfo({
    int? productId,
    int? size,
    int? orderPartId,
    required String status,
    DateTime? updatedAt,
    DateTime? orderedAt,
  }) = _OrderPartMainInfo;

  factory OrderPartMainInfo.fromJson(Map<String, dynamic> json) =>
      _$OrderPartMainInfoFromJson(json);
}