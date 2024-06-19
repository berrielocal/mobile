import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_part_list_response.freezed.dart';

part 'order_part_list_response.g.dart';

@freezed
class OrderPartListResponse with _$OrderPartListResponse {
  const factory OrderPartListResponse({
    required List<OrderPartMainInfo> items,
    required double? sum,
  }) = _OrderPartListResponse;

  factory OrderPartListResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPartListResponseFromJson(json);
}
