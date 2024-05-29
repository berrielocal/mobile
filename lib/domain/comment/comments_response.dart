import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/comment/comment_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_response.freezed.dart';

part 'comments_response.g.dart';

@freezed
class CommentsResponse with _$CommentsResponse {
  const factory CommentsResponse({
    required List<CommentResponse> comments,
  }) = _CommentsResponse;

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);
}
