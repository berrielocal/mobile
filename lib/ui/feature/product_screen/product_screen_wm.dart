import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_screen_model.dart';
import 'product_screen_widget.dart';

abstract interface class IProductScreenWidgetModel implements IWidgetModel {
  void back();
  void toCart();
  ProductRepository get productRepository;
  ProfileRepository get profileRepository;
  Future<ProductResponse> getProductById(int productId);
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
  void initWidgetModel() {
    AppMetrica.reportEvent('open_productPage');
    super.initWidgetModel();
  }

  @override
  void toCart() {
    if (profileRepository.profile.value != null) {
      AppMetrica.reportEvent('open_cartPage');
      context.router.navigate(const CartTab());
    } else {
      context.router.navigate(LoginRoute());
    }
  }

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  Future<ProductResponse> getProductById(int productId) async {
    try {
      final result = productRepository.getProductById(productId);
      return result;
    } catch (e, s) {
      Error.throwWithStackTrace(e, s);
    }
  }

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;
}
