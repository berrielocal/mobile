import 'dart:async';

import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:berrielocal/domain/shop/shop_update_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'shop_service.g.dart';

@RestApi()
abstract class ShopService {
  factory ShopService(
    Dio dio, {
    String baseUrl,
  }) = _ShopService;

  @GET('/api/v1/shop/{shopId}')
  Future<ShopAllInfoResponse> getShopById({
    @Path() required int shopId,
  });

  @GET('/api/v1/shop')
  Future<ShopListResponse> getAllShops(
      {@Queries() Map<String, dynamic>? queries});

  @PATCH('/api/v1/shop')
  Future<void> updateShop({
    @Body() required ShopUpdateRequest request,
  });

  @DELETE('/api/v1/shop')
  Future<void> deleteShop();
}
