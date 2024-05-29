import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel implements IWidgetModel {
  void back();
  void toResult();
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
  void initWidgetModel() {
    AppMetrica.reportEvent('open_orderPage');
    super.initWidgetModel();
  }

  @override
  final emailController = TextEditingController();

  @override
  void toResult() {
    AppMetrica.reportEvent('order_success');
    context.router.navigate(OrderSuccessRoute());
  }
}
