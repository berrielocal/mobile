import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
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
  ValueNotifier<EntityState<List<ProductResponse>>> get cartState;
  void toProduct(int productId);
  void toOrder();
  ProfileRepository get profileRepository;
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
  final EntityStateNotifier<List<ProductResponse>> _cartState =
      EntityStateNotifier();
  CartScreenWidgetModel(CartScreenModel model) : super(model);

  @override
  ValueNotifier<EntityState<List<ProductResponse>>> get cartState => _cartState;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileRepository.profile.listen((value) {
      if (value != null) {
        _cartState.content([
          const ProductResponse(
            name: 'Test',
            cost: 100,
            units: '1',
          ),
          const ProductResponse(
            name: 'Test',
            cost: 100,
            units: '1',
          ),
          const ProductResponse(
            name: 'Test',
            cost: 100,
            units: '1',
          )
        ]);
      } else {
        _cartState.content([]);
      }
    });
  }

  @override
  void toProduct(int productId) {
    context.router.root.navigate(ProductRoute(productId: productId));
  }

  @override
  void toOrder() {
    context.router.navigate(OrderRoute());
  }

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;
}
