import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shop_edit_screen_model.dart';
import 'shop_edit_screen_widget.dart';

abstract interface class IShopEditScreenWidgetModel implements IWidgetModel {
  void back();
  late final TextEditingController emailController;
  EntityStateNotifier<ProductListResponse> get testProducts;
}

ShopEditScreenWidgetModel defaultShopEditScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ShopEditScreenModel>();
  return ShopEditScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ShopEditScreenWidget
class ShopEditScreenWidgetModel
    extends WidgetModel<ShopEditScreenWidget, ShopEditScreenModel>
    implements IShopEditScreenWidgetModel {
  final EntityStateNotifier<ProductListResponse> _testProducts =
      EntityStateNotifier();
  ShopEditScreenWidgetModel(ShopEditScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  initWidgetModel() {
    super.initWidgetModel();
    _loadProducts();
  }

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
  TextEditingController emailController = TextEditingController();

  @override
  EntityStateNotifier<ProductListResponse> get testProducts => _testProducts;
}
