import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_screen_model.dart';
import 'cart_screen_widget.dart';

abstract interface class ICartScreenWidgetModel implements IWidgetModel {}

CartScreenWidgetModel defaultCartScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<CartScreenModel>();
  return CartScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for CartScreenWidget
class CartScreenWidgetModel
    extends WidgetModel<CartScreenWidget, CartScreenModel>
    with ThemeProvider
    implements ICartScreenWidgetModel {
  CartScreenWidgetModel(CartScreenModel model) : super(model);
}
