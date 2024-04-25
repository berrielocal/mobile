import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shop_screen_model.dart';
import 'shop_screen_widget.dart';

abstract interface class IShopScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  EntityStateNotifier<ProductListResponse> get testProducts;
  void back();
}

ShopScreenWidgetModel defaultShopScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ShopScreenModel>();
  return ShopScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ShopScreenWidget
class ShopScreenWidgetModel
    extends WidgetModel<ShopScreenWidget, ShopScreenModel>
    with ThemeProvider
    implements IShopScreenWidgetModel {
  final EntityStateNotifier<ProductListResponse> _testProducts =
      EntityStateNotifier();
  ShopScreenWidgetModel(ShopScreenModel model) : super(model);

  Future<void> _loadProducts() async {
    final previousData = _testProducts.value.data;
    _testProducts.loading(previousData);
    try {
      final res = await model.getProducts();
      _testProducts.content(res);
    } on Exception catch (e) {
      _testProducts.error(e, previousData);
    }
  }

  @override
  void back() {
    context.router.pop();
  }

  @override
  EntityStateNotifier<ProductListResponse> get testProducts => _testProducts;
}