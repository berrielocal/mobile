import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_add_to_cart_request.freezed.dart';

part 'product_add_to_cart_request.g.dart';

@freezed
class ProductAddToCartRequest with _$ProductAddToCartRequest {
  const factory ProductAddToCartRequest({
    required int size,
    required int productId,
  }) = _ProductAddToCartReques;

  factory ProductAddToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductAddToCartRequestFromJson(json);
}