import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:berrielocal/domain/shop/shop_update_request.dart';
import 'package:dio/dio.dart';

class ShopRepository {
  ShopRepository(
    this._shopService,
  );

  final ShopService _shopService;

  Future<ShopListResponse> getAllShops({Map<String, dynamic>? queries}) async {
    try {
      final result = await _shopService.getAllShops(queries: queries);
      return result;
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }

  Future<void> updateShop({required ShopUpdateRequest request}) async {
    try {
      await _shopService.updateShop(request: request);
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }
}
