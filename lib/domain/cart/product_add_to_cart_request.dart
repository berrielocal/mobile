import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_add_to_cart_request.g.dart';
part 'product_add_to_cart_request.freezed.dart';

@freezed
class ProductAddToCartRequest with _$ProductAddToCartRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProductAddToCartRequest({
    required int size,
    required int productId,
  }) = _ProductAddToCartRequest;

  factory ProductAddToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductAddToCartRequestFromJson(json);
}
