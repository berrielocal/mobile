import 'dart:async';

import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
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
}
