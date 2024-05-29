import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.freezed.dart';

part 'comment_response.g.dart';

@freezed
class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    int? commentId,
    int? customerId,
    int? shopId,
    String? text,
    double? rate,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}
