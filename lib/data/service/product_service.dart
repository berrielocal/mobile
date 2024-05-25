import 'dart:async';

import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'product_service.g.dart';

@RestApi()
abstract class ProductService {
  factory ProductService(
    Dio dio, {
    String baseUrl,
  }) = _ProductService;

  @GET('/api/v1/product/shop/{shopId}')
  Future<ProductListResponse> getShopProducts({
    @Path() required int shopId,
  });

  @GET('/api/v1/product/{productId}')
  Future<ProductResponse> getProductById({
    @Path() required int productId,
  });
}
