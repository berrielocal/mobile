import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_create_response.freezed.dart';

part 'product_create_response.g.dart';

@freezed
class ProductCreateResponse with _$ProductCreateResponse {
  const factory ProductCreateResponse({
    required int productId,
  }) = _ProductCreateResponse;

  factory ProductCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateResponseFromJson(json);
}
