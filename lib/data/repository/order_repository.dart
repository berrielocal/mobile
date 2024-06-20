import 'package:berrielocal/data/service/order_service.dart';
import 'package:berrielocal/domain/order/change_order_status_request.dart';
import 'package:berrielocal/domain/order/order_create_request.dart';
import 'package:berrielocal/domain/order/order_part_by_shop_id_response.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class OrderRepository {
  OrderRepository(
    this.orderService,
  );

  final OrderService orderService;
  final BehaviorSubject<OrderPartByShopIdResponse> customerOrders =
      BehaviorSubject();
  final BehaviorSubject<OrderPartByShopIdResponse> shopOrders =
      BehaviorSubject();

  Future<void> createOrder(OrderCreateRequest request) async {
    try {
      await orderService.createOrder(request: request);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<void> changeOrderStatus(ChangeOrderStatusRequest request) async {
    try {
      await orderService.changeOrderStatus(request: request);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<OrderPartByShopIdResponse> getShopOrder(int shopId) async {
    try {
      final result = await orderService.getShopOrders(shopId: shopId);
      shopOrders.add(result);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<OrderPartByShopIdResponse> getCustomerOrder() async {
    try {
      final result = await orderService.getCustomerOrders();
      customerOrders.add(result);
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
