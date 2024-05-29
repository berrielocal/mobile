import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/comment_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/di/app_components.dart';
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
  ProductRepository get productRepository;
  AuthRepository get authRepository;
  CommentRepository get commentRepository;
  Future<void> loadProducts(int shopId);
  late final OverlayPortalController tooltipController;
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


  @override
  void initWidgetModel() {
    AppMetrica.reportEvent('open_shopPage');
    super.initWidgetModel();
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
  void back() {
    context.router.pop();
  }

  @override
  EntityStateNotifier<ProductListResponse> get testProducts => _testProducts;

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  AuthRepository authRepository = AppComponents().authRepository;

  @override
  OverlayPortalController tooltipController = OverlayPortalController();

  @override
  CommentRepository commentRepository = AppComponents().commentRepository;
}
