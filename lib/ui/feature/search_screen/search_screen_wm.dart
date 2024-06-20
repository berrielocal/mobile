import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'search_screen_model.dart';

abstract interface class ISearchScreenWidgetModel implements IWidgetModel {
  void back();
  void onSearchQueryChanged(String query);
  void onSuggestionSelected(String suggestion);
  EntityStateNotifier<List<String>> get searchSuggestions;
  ShopRepository get shopRepository;
}

SearchScreenWidgetModel defaultSearchScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<SearchScreenModel>();
  return SearchScreenWidgetModel(model);
}

class SearchScreenWidgetModel
    extends WidgetModel<SearchScreenWidget, SearchScreenModel>
    implements ISearchScreenWidgetModel {
  final EntityStateNotifier<List<String>> _searchSuggestions =
      EntityStateNotifier();
  final List<String> hardcodedSuggestions = ['Шестёрочка', 'ХолодТорг'];

  SearchScreenWidgetModel(SearchScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  void onSearchQueryChanged(String query) async {
    final shopNames = await model.getShopNames();
    final allSuggestions = [...shopNames, ...hardcodedSuggestions];
    final suggestions = allSuggestions.where((shopName) {
      return shopName.toLowerCase().contains(query.toLowerCase());
    }).toList();
    _searchSuggestions.content(suggestions);
  }

  @override
  void onSuggestionSelected(String suggestion) async {
    final shop = await model.getShopByName(suggestion);
    if (shop != null) {
      context.router.push(ShopRoute(shopId: int.parse(shop.shopId!)));
    }
  }

  @override
  EntityStateNotifier<List<String>> get searchSuggestions => _searchSuggestions;

  @override
  ShopRepository shopRepository = AppComponents().shopRepository;
}
