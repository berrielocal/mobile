import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_screen_model.dart';
import 'product_screen_widget.dart';

abstract interface class IProductScreenWidgetModel implements IWidgetModel {
  void back();
  void toCart();
}

ProductScreenWidgetModel defaultProductScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ProductScreenModel>();
  return ProductScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ProductScreenWidget
class ProductScreenWidgetModel
    extends WidgetModel<ProductScreenWidget, ProductScreenModel>
    implements IProductScreenWidgetModel {
  ProductScreenWidgetModel(ProductScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  void toCart() {
    context.router.navigate(const CartTab());
  }
}
