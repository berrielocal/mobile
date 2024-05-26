import 'dart:async';

import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(
    Dio dio, {
    String baseUrl,
  }) = _CartService;

  @GET('/api/v1/cart')
  Future<OrderPartListResponse> getUserCart();
}
