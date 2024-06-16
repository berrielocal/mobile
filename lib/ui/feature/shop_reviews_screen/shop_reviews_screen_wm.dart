import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/service/auth_service.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shop_reviews_screen_model.dart';
import 'shop_reviews_screen_widget.dart';

abstract interface class IShopReviewsScreenWidgetModel implements IWidgetModel {
  void back();
  void addComment(int? shopId);
  AuthRepository get authRepository;
  Future<String> getCommentName(int userId);
}

ShopReviewsScreenWidgetModel defaultShopReviewsScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ShopReviewsScreenModel>();
  return ShopReviewsScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ShopReviewsScreenWidget
class ShopReviewsScreenWidgetModel
    extends WidgetModel<ShopReviewsScreenWidget, ShopReviewsScreenModel>
    implements IShopReviewsScreenWidgetModel {
  ShopReviewsScreenWidgetModel(ShopReviewsScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  Future<String> getCommentName(int userId) async {
    final result = await authRepository.getShopById(userId);
    return result.name ?? 'Название магазина не указано';
  }

  @override
  AuthRepository authRepository = AppComponents().authRepository;

  @override
  void addComment(int? shopId) {
    context.router.navigate(AddReviewRoute(shopId: shopId!));
  }
}
