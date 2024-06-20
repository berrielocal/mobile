import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/order_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/order/change_order_status_request.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_history_detail_screen_model.dart';
import 'order_history_detail_screen_widget.dart';

abstract interface class IOrderHistoryDetailScreenWidgetModel
    implements IWidgetModel {
  void back();
  Future<void> changeStatus(ChangeOrderStatusRequest request, int shopId);
  OrderRepository get orderRepository;
  ProductRepository get productRepository;
  ProfileRepository get profileRepository;
}

OrderHistoryDetailScreenWidgetModel
    defaultOrderHistoryDetailScreenWidgetModelFactory(BuildContext context) {
  final model = context.read<OrderHistoryDetailScreenModel>();
  return OrderHistoryDetailScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for OrderHistoryDetailScreenWidget
class OrderHistoryDetailScreenWidgetModel extends WidgetModel<
        OrderHistoryDetailScreenWidget, OrderHistoryDetailScreenModel>
    implements IOrderHistoryDetailScreenWidgetModel {
  OrderHistoryDetailScreenWidgetModel(OrderHistoryDetailScreenModel model)
      : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  OrderRepository orderRepository = AppComponents().orderRepository;

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  Future<void> changeStatus(
      ChangeOrderStatusRequest request, int shopId) async {
    await orderRepository.changeOrderStatus(request);
    await orderRepository.getShopOrder(shopId);
  }
}
