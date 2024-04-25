import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_response.freezed.dart';

part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    int? shopId,
    List<ProductResponse>? products,

  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}