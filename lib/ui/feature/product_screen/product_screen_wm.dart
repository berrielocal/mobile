import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/cart/product_add_to_cart_request.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'product_screen_model.dart';
import 'product_screen_widget.dart';

abstract interface class IProductScreenWidgetModel implements IWidgetModel {
  void back();
  Future<void> toCart(int productId, int size);
  ProductRepository get productRepository;
  CartRepository get cartRepository;
  ProfileRepository get profileRepository;
  Future<ProductResponse> getProductById(int productId);
  void refresh();
  ValueNotifier<int> get refreshNotifier;
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
  final ValueNotifier<int> _refreshNotifier = ValueNotifier<int>(0);

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
  Future<void> toCart(int productId, int size) async {
    if (profileRepository.profile.hasValue &&
        profileRepository.profile.value != null) {
      if (cartRepository.cart.hasValue &&
          cartRepository.cart.value.items
              .where((e) => e.productId == productId)
              .isNotEmpty) {
        AppMetrica.reportEvent('open_cartPage');
        context.router.navigate(const CartTab());
        return;
      }
      await cartRepository.addToCart(
        ProductAddToCartRequest(size: size, productId: productId),
      );
      await cartRepository.getCart();
    } else {
      context.router.navigate(LoginRoute());
    }
  }

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  CartRepository cartRepository = AppComponents().cartRepository;

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

  @override
  void refresh() {
    _refreshNotifier.value++;
  }

  @override
  ValueNotifier<int> get refreshNotifier => _refreshNotifier;

  Future<void> toggleFavoriteStatus(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList('favorites') ?? [];
    if (favorites.contains(productId.toString())) {
      favorites.remove(productId.toString());
    } else {
      favorites.add(productId.toString());
    }
    await prefs.setStringList('favorites', favorites);
    refresh();
  }
}
