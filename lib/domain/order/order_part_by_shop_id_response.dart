import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_part_by_shop_id_response.freezed.dart';

part 'order_part_by_shop_id_response.g.dart';

@freezed
class OrderPartByShopIdResponse with _$OrderPartByShopIdResponse {
  const factory OrderPartByShopIdResponse({
    required List<OrderPartMainInfo> orderParts,
  }) = _OrderPartByShopIdResponse;

  factory OrderPartByShopIdResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPartByShopIdResponseFromJson(json);
}
