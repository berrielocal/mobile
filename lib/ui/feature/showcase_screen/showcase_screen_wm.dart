import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'showcase_screen_model.dart';
import 'showcase_screen_widget.dart';

abstract interface class IShowcaseScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueNotifier<EntityState<List<ShopMainInfo>>> get testShop;
}

ShowcaseScreenWidgetModel defaultShowcaseScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ShowcaseScreenModel>();
  return ShowcaseScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ShowcaseScreenWidget
class ShowcaseScreenWidgetModel
    extends WidgetModel<ShowcaseScreenWidget, ShowcaseScreenModel>
    with ThemeProvider
    implements IShowcaseScreenWidgetModel {
  final EntityStateNotifier<List<ShopMainInfo>> _testShop =
      EntityStateNotifier();
  ShowcaseScreenWidgetModel(ShowcaseScreenModel model) : super(model);

  @override
  ValueNotifier<EntityState<List<ShopMainInfo>>> get testShop => _testShop;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadShops();
  }

  Future<void> _loadShops() async {
    final previousData = _testShop.value.data;
    _testShop.loading(previousData);
    try {
      final res = await model.getShops();
      _testShop.content(res);
    } on Exception catch (e) {
      _testShop.error(e, previousData);
    }
  }
}
