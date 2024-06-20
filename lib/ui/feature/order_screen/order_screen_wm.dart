import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/data/repository/order_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/order/order_create_request.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel implements IWidgetModel {
  void back();
  void toResult();
  OrderRepository get orderRepository;
  CartRepository get cartRepository;
  TextEditingController get emailController;
  TextEditingController get nameController;
  TextEditingController get phoneController;
  TextEditingController get addressController;
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
  Future<void> toResult() async {
    await orderRepository
        .createOrder(OrderCreateRequest(address: addressController.text));
    AppMetrica.reportEvent('order_success');
    context.router.navigate(
      OrderSuccessRoute(
        productId: cartRepository.cart.value.items.first.productId,
      ),
    );
    cartRepository.cart.add(
      OrderPartListResponse(items: [], sum: 0),
    );
    await cartRepository.getCart();
  }

  @override
  TextEditingController addressController = TextEditingController();

  @override
  TextEditingController nameController = TextEditingController();

  @override
  TextEditingController phoneController = TextEditingController();

  @override
  CartRepository cartRepository = AppComponents().cartRepository;

  @override
  OrderRepository orderRepository = AppComponents().orderRepository;
}
