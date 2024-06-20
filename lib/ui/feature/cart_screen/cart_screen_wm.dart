import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/cart/order_part_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_screen_model.dart';
import 'cart_screen_widget.dart';

abstract interface class ICartScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueNotifier<EntityState<OrderPartListResponse>> get cartState;
  void toProduct(int productId);
  void toOrder(double? sum);
  ProfileRepository get profileRepository;
  CartRepository get cartRepository;
  ProductRepository get productRepository;
  Future<void> removeFromCart(int productId);
}

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
  final EntityStateNotifier<OrderPartListResponse> _cartState =
      EntityStateNotifier();
  CartScreenWidgetModel(CartScreenModel model) : super(model);

  @override
  ValueNotifier<EntityState<OrderPartListResponse>> get cartState => _cartState;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _cartState.content(
      cartRepository.cart.hasValue
          ? cartRepository.cart.value
          : OrderPartListResponse(
              items: [],
              sum: null,
            ),
    );
    cartRepository.cart.listen((value) async {
      _cartState.content(value);
    });
    profileRepository.profile.listen((value) async {
      if (value == null) {
        cartRepository.cart.add(OrderPartListResponse(items: [], sum: null));
        _cartState.content(OrderPartListResponse(items: [], sum: null));
        return;
      }
      await cartRepository.getCart();
      _cartState.content(cartRepository.cart.value);
    });
  }

  @override
  void toProduct(int productId) {
    context.router.root.navigate(ProductRoute(productId: productId));
  }

  @override
  void toOrder(double? sum) {
    context.router.navigate(OrderRoute(sum: sum));
  }

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  CartRepository cartRepository = AppComponents().cartRepository;

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  Future<void> removeFromCart(int productId) async {
    await cartRepository.deleteFromCart(productId);
    await cartRepository.getCart();
    _cartState.content(cartRepository.cart.value);
  }
}
