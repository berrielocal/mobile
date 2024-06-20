import 'dart:async';

import 'package:berrielocal/domain/comment/comment_create_request.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:berrielocal/domain/order/change_order_status_request.dart';
import 'package:berrielocal/domain/order/order_create_request.dart';
import 'package:berrielocal/domain/order/order_part_by_shop_id_response.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {
  factory OrderService(
    Dio dio, {
    String baseUrl,
  }) = _OrderService;

  @POST('/api/v1/order/accept')
  Future<void> createOrder({
    @Body() required OrderCreateRequest request,
  });

  @PUT('/api/v1/order/shop')
  Future<void> changeOrderStatus({
    @Body() required ChangeOrderStatusRequest request,
  });

  @GET('/api/v1/order/shop/{shopId}')
  Future<OrderPartByShopIdResponse> getShopOrders({
    @Path() required int shopId,
  });

  @GET('/api/v1/order/customer')
  Future<OrderPartByShopIdResponse> getCustomerOrders();
}
