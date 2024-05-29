import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shop_edit_screen_model.dart';
import 'shop_edit_screen_widget.dart';

abstract interface class IShopEditScreenWidgetModel implements IWidgetModel {
  void back();
  late final TextEditingController emailController;
  late final TextEditingController nameController;
  late final TextEditingController phoneController;
  late final TextEditingController infoController;
  late final TextEditingController urlController;
  void setData(ShopAllInfoResponse response);
  Future<void> loadProducts(int shopId);
  EntityStateNotifier<ProductListResponse> get testProducts;
  AuthRepository get authRepository;
  ProductRepository get productRepository;
  ShopRepository get shopRepository;
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
  Future<void> loadProducts(int shopId) async {
    final previousData = _testProducts.value.data;
    _testProducts.loading(previousData);
    try {
      final res = await productRepository.getShopProducts(shopId);
      _testProducts.content(res);
    } on Exception catch (e) {
      _testProducts.error(e, previousData);
    }
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
  void setData(ShopAllInfoResponse response) {
    emailController.text = response.email ?? '';
    nameController.text = response.name ?? '';
    phoneController.text = response.phoneNumber ?? '';
  }

  @override
  TextEditingController emailController = TextEditingController();

  @override
  EntityStateNotifier<ProductListResponse> get testProducts => _testProducts;

  @override
  AuthRepository authRepository = AppComponents().authRepository;

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  TextEditingController infoController = TextEditingController();

  @override
  TextEditingController nameController = TextEditingController();

  @override
  TextEditingController phoneController = TextEditingController();

  @override
  ShopRepository shopRepository = AppComponents().shopRepository;

  @override
  TextEditingController urlController = TextEditingController();
}
