import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_widget.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_wm.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_widget.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_wm.dart';
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
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(
            page: ShowCaseTab.page,
            initial: true,
            children: [
              AutoRoute(
                initial: true,
                page: ShowcaseRouteWidget.page,
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
            ],
          ),
          AutoRoute(
            page: ProfileTab.page,
            children: [
              AutoRoute(
                page: ProfileRouteWidget.page,
                initial: true,
              ),
            ],
          ),
        ]),
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
