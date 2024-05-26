import 'package:berrielocal/data/service/product_service.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:dio/dio.dart';

class ProductRepository {
  final ProductService _productService;
  ProductRepository(
    this._productService,
  );

  Future<ProductListResponse> getShopProducts(int shopId) async {
    try {
      final result = await _productService.getShopProducts(shopId: shopId);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
