import 'package:berrielocal/data/service/cart_service.dart';
import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/cart/product_add_to_cart_request.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class CartRepository {
  CartRepository(
    this._cartService,
  );

  final CartService _cartService;

  final BehaviorSubject<OrderPartListResponse> cart = BehaviorSubject();

  Future<OrderPartListResponse> getCart() async {
    try {
      final result = await _cartService.getUserCart();
      cart.add(result);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> deleteFromCart(int productId) async {
    try {
      await _cartService.deleteFromCart(
        productId: productId,
      );
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> addToCart(ProductAddToCartRequest request) async {
    try {
      await _cartService.addToCart(
        request: request,
      );
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
