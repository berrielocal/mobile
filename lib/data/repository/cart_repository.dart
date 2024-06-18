import 'package:berrielocal/data/service/cart_service.dart';
import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/domain/cart/product_add_to_cart_request.dart';
import 'package:dio/dio.dart';

class CartRepository {
  CartRepository(
    this._cartService,
  );

  final CartService _cartService;

  Future<void> addToCart(ProductAddToCartRequest request) async {
    try {
      await _cartService.addToCart(request);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> incCount(int productId, int size) async {
    try {
      await _cartService.incCount(productId: productId, size: size);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
