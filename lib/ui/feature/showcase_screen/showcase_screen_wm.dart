import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'showcase_screen_model.dart';
import 'showcase_screen_widget.dart';

abstract interface class IShowcaseScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueNotifier<EntityState<ShopListResponse>> get testShop;
  void openSearch();
  Future<void> getAllShops();
  ShopRepository get shopRepository;
  ProfileRepository get profileRepository;
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
  final EntityStateNotifier<ShopListResponse> _testShop = EntityStateNotifier();
  ShowcaseScreenWidgetModel(ShowcaseScreenModel model) : super(model);

  @override
  ValueNotifier<EntityState<ShopListResponse>> get testShop => _testShop;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileRepository.loadProfile();
    // getAllShops();
    // _loadShops();
  }

  @override
  void dispose() {
    super.dispose();
    profileRepository.dispose();
  }

  @override
  Future<void> getAllShops() async {
    final previousData = _testShop.value.data;
    _testShop.loading(previousData);
    final queries = {
      'category': [
        'FISH',
        // 'MEAT',
        // 'VEGETABLES',
        // 'FRUITS',
        // 'NUTS',
        // 'MUSHROOMS',
        // 'EXOTIC',
      ]
    };
    try {
      final result = await shopRepository.getAllShops(queries: queries);
      _testShop.content(result);
    } on Exception catch (e) {
      _testShop.error(e, previousData);
    }
  }

  // Future<void> _loadShops() async {
  //   final previousData = _testShop.value.data;
  //   _testShop.loading(previousData);
  //   try {
  //     final res = await model.getShops();
  //     _testShop.content(res);
  //   } on Exception catch (e) {
  //     _testShop.error(e, previousData);
  //   }
  // }

  @override
  void openSearch() async {
    context.router.navigate(SearchRoute());
  }

  @override
  ShopRepository shopRepository = AppComponents().shopRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;
}
