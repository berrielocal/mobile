import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_history_screen_model.dart';
import 'order_history_screen_widget.dart';

abstract interface class IOrderHistoryScreenWidgetModel
    implements IWidgetModel {
  ValueNotifier<EntityState<OrderPartListResponse>> get ordersState;
  void back();
  void detailOrder();
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
  final EntityStateNotifier<OrderPartListResponse> _ordersState =
      EntityStateNotifier();
  OrderHistoryScreenWidgetModel(OrderHistoryScreenModel model) : super(model);

  @override
  // TODO: implement orderState
  ValueNotifier<EntityState<OrderPartListResponse>> get ordersState =>
      _ordersState;

  @override
  void initWidgetModel() {
    _ordersState.content(
      OrderPartListResponse(
        items: [
          OrderPartMainInfo(status: 'ORDERED'),
        ],
        sum: null,
      ),
    );
    super.initWidgetModel();
  }

  @override
  void back() {
    context.router.pop();
  }

  @override
  void detailOrder() {
    // TODO: implement detailOrder
  }
}
