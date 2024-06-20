import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/data/repository/comment_repository.dart';
import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
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
  Future<void> getAllShops({Map<String, List<String>>? map});
  ShopRepository get shopRepository;
  ProfileRepository get profileRepository;
  CommentRepository get commentRepository;
  CartRepository get cartRepository;
  void setSortOption(String option);
  String get sortOption;
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
  String sortOption = 'ПО ПОПУЛЯРНОСТИ'; // Default sort option

  ShowcaseScreenWidgetModel(ShowcaseScreenModel model) : super(model);

  @override
  ValueNotifier<EntityState<ShopListResponse>> get testShop => _testShop;

  @override
  void setSortOption(String option) {
    sortOption = option;
    final sortQueries = getSortQueries(sortOption);
    getAllShops(map: sortQueries);
  }

  Map<String, List<String>> getSortQueries(String sortOption) {
    switch (sortOption) {
      case 'А-Я':
        return {
          'category': [
            'FISH',
            'MEAT',
            'VEGETABLES',
            'FRUITS',
            'NUTS',
            'MUSHROOMS',
            'EXOTIC',
          ],
        };
      case 'ПО ПОПУЛЯРНОСТИ':
        return {
          'category': [
            'FISH',
            'MEAT',
            'VEGETABLES',
            'FRUITS',
            'NUTS',
            'MUSHROOMS',
            'EXOTIC',
          ],
        };
      case 'Я-А':
        return {
          'category': [
            'EXOTIC',
            'MUSHROOMS',
            'NUTS',
            'FRUITS',
            'VEGETABLES',
            'MEAT',
            'FISH',
          ],
        };
      case 'ПО НОВИЗНЕ':
        return {
          'category': [
            'FRUITS',
            'NUTS',
            'MUSHROOMS',
            'EXOTIC',
            'FISH',
            'MEAT',
            'VEGETABLES',
          ],
        };
      default:
        return {
          'category': [
            'FISH',
            'MEAT',
            'VEGETABLES',
            'FRUITS',
            'NUTS',
            'MUSHROOMS',
            'EXOTIC',
          ],
        };
    }
  }

  @override
  Future<void> getAllShops({Map<String, List<String>>? map}) async {
    final previousData = _testShop.value.data;
    _testShop.loading(previousData);
    final queries = map ??
        {
          'category': [
            'FISH',
            'MEAT',
            'VEGETABLES',
            'FRUITS',
            'NUTS',
            'MUSHROOMS',
            'EXOTIC',
          ],
        };

    try {
      final result = await shopRepository.getAllShops(queries: queries);
      _testShop.content(result);
    } on Exception catch (e) {
      _testShop.error(e, previousData);
    }
  }

  @override
  void openSearch() async {
    context.router.navigate(SearchRoute());
  }

  @override
  ShopRepository shopRepository = AppComponents().shopRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  CommentRepository commentRepository = AppComponents().commentRepository;

  @override
  CartRepository cartRepository = AppComponents().cartRepository;
}
