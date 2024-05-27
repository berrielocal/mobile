import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';

part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    int? productId,
    String? name,
    String? imageUrl,
    double? cost,
    int? maxSize,
    int? minSize,
    String? units,
    int? shopId,
    List<String>? categories,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
