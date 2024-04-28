import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel implements IWidgetModel {
  void back();
  TextEditingController get emailController;
}

OrderScreenWidgetModel defaultOrderScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<OrderScreenModel>();
  return OrderScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for OrderScreenWidget
class OrderScreenWidgetModel
    extends WidgetModel<OrderScreenWidget, OrderScreenModel>
    implements IOrderScreenWidgetModel {
  OrderScreenWidgetModel(OrderScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  final emailController = TextEditingController();
}
