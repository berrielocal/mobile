import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_screen_model.dart';
import 'favorite_screen_widget.dart';

abstract interface class IFavoriteScreenWidgetModel implements IWidgetModel {
  void back();
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
  FavoriteScreenWidgetModel(FavoriteScreenModel model) : super(model);
  
  @override
  void back() {
    context.router.pop();
  }
}
