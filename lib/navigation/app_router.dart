import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:berrielocal/ui/feature/add_review_screen/add_review_screen_widget.dart';
import 'package:berrielocal/ui/feature/add_review_screen/add_review_screen_wm.dart';
import 'package:berrielocal/ui/feature/auth_code_screen/auth_code_screen_widget.dart';
import 'package:berrielocal/ui/feature/auth_code_screen/auth_code_screen_wm.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_widget.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_wm.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_widget.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_wm.dart';
import 'package:berrielocal/ui/feature/favorite_categories_screen/favorite_categories_screen.dart';
import 'package:berrielocal/ui/feature/favorite_screen/favorite_screen_widget.dart';
import 'package:berrielocal/ui/feature/favorite_screen/favorite_screen_wm.dart';
import 'package:berrielocal/ui/feature/login_screen/login_screen_widget.dart';
import 'package:berrielocal/ui/feature/login_screen/login_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_history_detail_screen/order_history_detail_screen_widget.dart';
import 'package:berrielocal/ui/feature/order_history_detail_screen/order_history_detail_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_widget.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_widget.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_screen/order_success_screen.dart';
import 'package:berrielocal/ui/feature/policy_screen.dart';
import 'package:berrielocal/ui/feature/product_add_screen/product_add_screen_widget.dart';
import 'package:berrielocal/ui/feature/product_add_screen/product_add_screen_wm.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_widget.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_wm.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_widget.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_wm.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_widget.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_wm.dart';
import 'package:berrielocal/ui/feature/shop_edit_screen/shop_edit_screen_widget.dart';
import 'package:berrielocal/ui/feature/shop_edit_screen/shop_edit_screen_wm.dart';
import 'package:berrielocal/ui/feature/shop_reviews_screen/shop_reviews_screen_widget.dart';
import 'package:berrielocal/ui/feature/shop_reviews_screen/shop_reviews_screen_wm.dart';
import 'package:berrielocal/ui/feature/shop_screen/shop_screen_widget.dart';
import 'package:berrielocal/ui/feature/shop_screen/shop_screen_wm.dart';
import 'package:berrielocal/ui/feature/showcase_screen/showcase_screen_widget.dart';
import 'package:berrielocal/ui/feature/showcase_screen/showcase_screen_wm.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:berrielocal/ui/feature/home/home.dart';
import 'package:berrielocal/ui/ui_kit/empty_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget|ScreenWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShowcaseRoute.page,
                ),
                AutoRoute(
                  page: SearchRoute.page,
                ),
                AutoRoute(
                  page: ShopRoute.page,
                  path: 'shop/:shopId',
                ),
                AutoRoute(
                  page: ProductRoute.page,
                  path: 'product/:productId',
                ),
                AutoRoute(
                  page: ShopReviewsRoute.page,
                ),
                AutoRoute(
                  page: AddReviewRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: CartTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CartRoute.page,
                ),
                AutoRoute(
                  page: OrderRoute.page,
                ),
                AutoRoute(
                  page: OrderSuccessRoute.page,
                ),
                AutoRoute(
                  page: ProductRoute.page,
                  path: 'product/:productId',
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: OrderHistoryRoute.page,
                ),
                AutoRoute(
                  page: ProductRoute.page,
                  path: 'product/:productId',
                ),
                AutoRoute(
                  page: ShopEditRoute.page,
                  path: 'shopedit/:shopId',
                ),
                AutoRoute(
                  page: FavoriteRoute.page,
                ),
                AutoRoute(
                  page: FavoriteCategoriesRoute.page,
                ),
                AutoRoute(
                  page: ProductAddRoute.page,
                ),
                AutoRoute(
                  page: OrderHistoryDetailRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: PolicyRoute.page,
          path: '/policyScreen',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/loginScreen',
        ),
        AutoRoute(
          page: AuthRoute.page,
          path: '/authScreen',
        ),
        AutoRoute(
          page: AuthCodeRoute.page,
          path: '/authCodeScreen',
        )
      ];
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
