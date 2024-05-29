import 'package:berrielocal/data/service/product_service.dart';
import 'package:berrielocal/domain/product/product_create_response.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_modify_request.dart';
import 'package:berrielocal/domain/product/product_response.dart';
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

  Future<ProductResponse> getProductById(int productId) async {
    try {
      final result = _productService.getProductById(productId: productId);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<ProductCreateResponse> addProduct(ProductModifyRequest request) async {
    try {
      final result = _productService.addProduct(request: request);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> deleteProduct(int productId) async {
    try {
      await _productService.deleteProduct(productId: productId);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
