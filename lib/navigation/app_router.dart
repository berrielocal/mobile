import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_widget.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_wm.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_widget.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_widget.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_widget.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_wm.dart';
import 'package:berrielocal/ui/feature/order_screen/order_success_screen.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_widget.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_wm.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_widget.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_wm.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_widget.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_wm.dart';
import 'package:berrielocal/ui/feature/shop_screen/shop_screen_widget.dart';
import 'package:berrielocal/ui/feature/shop_screen/shop_screen_wm.dart';
import 'package:berrielocal/ui/feature/showcase_screen/showcase_screen_widget.dart';
import 'package:berrielocal/ui/feature/showcase_screen/showcase_screen_wm.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:berrielocal/ui/feature/home/home.dart';
import 'package:berrielocal/ui/ui_kit/empty_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: ShowCaseTab.page,
              initial: true,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShowcaseRouteWidget.page,
                ),
                AutoRoute(
                  page: SearchRouteWidget.page,
                ),
                AutoRoute(
                  page: ShopRouteWidget.page,
                ),
                AutoRoute(
                  page: ProductRouteWidget.page,
                )
              ],
            ),
            AutoRoute(
              page: CartTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CartRouteWidget.page,
                ),
                AutoRoute(
                  page: OrderRouteWidget.page,
                ),
                AutoRoute(
                  page: OrderSuccessRoute.page,
                )
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRouteWidget.page,
                  initial: true,
                ),
                AutoRoute(
                  page: OrderHistoryRouteWidget.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: AuthRouteWidget.page,
          path: '/authScreen',
        ),
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
