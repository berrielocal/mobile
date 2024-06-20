import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'favorite_screen_model.dart';
import 'favorite_screen_widget.dart';

abstract interface class IFavoriteScreenWidgetModel implements IWidgetModel {
  void back();
  Future<List<ProductResponse>> getFavoriteProducts();
  ValueNotifier<int> get refreshNotifier;
}

FavoriteScreenWidgetModel defaultFavoriteScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<FavoriteScreenModel>();
  return FavoriteScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for FavoriteScreenWidget
class FavoriteScreenWidgetModel
    extends WidgetModel<FavoriteScreenWidget, FavoriteScreenModel>
    implements IFavoriteScreenWidgetModel {
  final ValueNotifier<int> _refreshNotifier = ValueNotifier<int>(0);

  FavoriteScreenWidgetModel(FavoriteScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  ValueNotifier<int> get refreshNotifier => _refreshNotifier;

  @override
  Future<List<ProductResponse>> getFavoriteProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteIds = prefs.getStringList('favorites') ?? [];
    final productRepository = AppComponents().productRepository;
    final products = <ProductResponse>[];

    for (final id in favoriteIds) {
      final product = await productRepository.getProductById(int.parse(id));
      products.add(product);
    }

    return products;
  }

  void refresh() {
    _refreshNotifier.value++;
  }
}
