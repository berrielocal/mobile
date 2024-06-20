import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/order_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/order/order_part_by_shop_id_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_history_screen_model.dart';
import 'order_history_screen_widget.dart';

abstract interface class IOrderHistoryScreenWidgetModel
    implements IWidgetModel {
  ValueNotifier<EntityState<OrderPartByShopIdResponse>> get customerOrdersState;
  ValueNotifier<EntityState<OrderPartByShopIdResponse>> get shopOrdersState;
  void back();
  OrderRepository get orderRepository;
  ProfileRepository get profileRepository;
  Future<OrderPartByShopIdResponse> getShopOrders(int shopId);
  Future<OrderPartByShopIdResponse> getCustomerOrders();
  void detailOrder();
  void toDetailHistory(OrderPartMainInfo order);
}

OrderHistoryScreenWidgetModel defaultOrderHistoryScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<OrderHistoryScreenModel>();
  return OrderHistoryScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for OrderHistoryScreenWidget
class OrderHistoryScreenWidgetModel
    extends WidgetModel<OrderHistoryScreenWidget, OrderHistoryScreenModel>
    implements IOrderHistoryScreenWidgetModel {
  final EntityStateNotifier<OrderPartByShopIdResponse> _shopOrdersState =
      EntityStateNotifier();
  final EntityStateNotifier<OrderPartByShopIdResponse> _customerOrdersState =
      EntityStateNotifier();
  OrderHistoryScreenWidgetModel(OrderHistoryScreenModel model) : super(model);

  @override
  // TODO: implement orderState
  ValueNotifier<EntityState<OrderPartByShopIdResponse>> get shopOrdersState =>
      _shopOrdersState;

  @override
  void initWidgetModel() {
    getCustomerOrders();
    getShopOrders(
      int.parse(profileRepository.profile.value!.shopId!),
    );
    orderRepository.shopOrders.listen((value) {
      _shopOrdersState.content(value);
    });
    orderRepository.customerOrders.listen((value) {
      _customerOrdersState.content(value);
    });
    super.initWidgetModel();
  }

  @override
  void back() {
    context.router.navigate(
      ProfileRoute(),
    );
  }

  @override
  void detailOrder() {
    // TODO: implement detailOrder
  }

  @override
  Future<OrderPartByShopIdResponse> getCustomerOrders() async {
    final result = await orderRepository.getCustomerOrder();
    return result;
  }

  @override
  Future<OrderPartByShopIdResponse> getShopOrders(int shopId) async {
    final result = await orderRepository.getShopOrder(shopId);
    return result;
  }

  @override
  OrderRepository orderRepository = AppComponents().orderRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  ValueNotifier<EntityState<OrderPartByShopIdResponse>>
      get customerOrdersState => _customerOrdersState;

  @override
  void toDetailHistory(OrderPartMainInfo order) {
    context.router.navigate(
      OrderHistoryDetailRoute(order: order),
    );
  }
}
