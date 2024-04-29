import 'package:berrielocal/data/service_mock/cart_service.dart';
import 'package:berrielocal/data/service_mock/product_service.dart';
import 'package:berrielocal/data/service_mock/shop_service.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_model.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_model.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_model.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_model.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_model.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_model.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_model.dart';
import 'package:berrielocal/ui/feature/shop_screen/shop_screen_model.dart';
import 'package:berrielocal/ui/feature/showcase_screen/showcase_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_components.dart';

class AppDependency extends StatefulWidget {
  const AppDependency({
    Key? key,
    required this.app,
  }) : super(key: key);

  final Widget app;

  @override
  State<AppDependency> createState() => _AppDependencyState();
}

class _AppDependencyState extends State<AppDependency> {
  //models
  late final ShowcaseScreenModel _showcaseScreenModel;
  late final CartScreenModel _cartScreenModel;
  late final ProfileScreenModel _profileScreenModel;
  late final SearchScreenModel _searchScreenModel;
  late final ShopScreenModel _shopScreenModel;
  late final ProductScreenModel _productScreenModel;
  late final AuthScreenModel _authScreenModel;
  late final OrderScreenModel _orderScreenModel;
  late final OrderHistoryScreenModel _orderHistoryScreenModel;

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //TODO: add repository in AppComponents
    final AuthRepository authRepository = AppComponents().authRepository;
    final MockShopService mockShopService = AppComponents().mockShopService;
    final MockCartService mockCartService = AppComponents().mockCartService;
    final MockProductService mockProductService =
        AppComponents().mockProductService;

    //TODO: init models
    _showcaseScreenModel = ShowcaseScreenModel(errorHandler, mockShopService);
    _cartScreenModel = CartScreenModel(errorHandler);
    _searchScreenModel = SearchScreenModel(errorHandler);
    _shopScreenModel = ShopScreenModel(errorHandler, mockProductService);
    _productScreenModel = ProductScreenModel(errorHandler);
    _authScreenModel = AuthScreenModel(errorHandler);
    _profileScreenModel = ProfileScreenModel(errorHandler);
    _orderScreenModel = OrderScreenModel(errorHandler);
    _orderHistoryScreenModel = OrderHistoryScreenModel(errorHandler);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
        //TODO: provide models
        Provider(
          create: (context) => _cartScreenModel,
        ),
        Provider(
          create: (context) => _showcaseScreenModel,
        ),
        Provider(
          create: (context) => _profileScreenModel,
        ),
        Provider(
          create: (context) => _searchScreenModel,
        ),
        Provider(
          create: (context) => _shopScreenModel,
        ),
        Provider(
          create: (context) => _productScreenModel,
        ),
        Provider(
          create: (context) => _authScreenModel,
        ),
        Provider(
          create: (context) => _orderScreenModel,
        ),
        Provider(
          create: (context) => _orderHistoryScreenModel,
        ),
      ],
      child: widget.app,
    );
  }
}
