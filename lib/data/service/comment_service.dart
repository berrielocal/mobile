import 'dart:async';

import 'package:berrielocal/domain/comment/comment_create_request.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'comment_service.g.dart';

@RestApi()
abstract class CommentService {
  factory CommentService(
    Dio dio, {
    String baseUrl,
  }) = _CommentService;

  @GET('/api/v1/comment/shop/{shopId}')
  Future<CommentsResponse> getComments({
    @Path() required int shopId,
  });

  @POST('/api/v1/comment')
  Future<void> postComment({
    @Body() required CommentCreateRequest request,
  });
}
