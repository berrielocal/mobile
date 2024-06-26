import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/data/repository/comment_repository.dart';
import 'package:berrielocal/data/repository/order_repository.dart';
import 'package:berrielocal/data/service_mock/cart_service_mock.dart';
import 'package:berrielocal/data/service_mock/product_service_mock.dart';
import 'package:berrielocal/data/service_mock/shop_service_mock.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/ui/feature/add_review_screen/add_review_screen_model.dart';
import 'package:berrielocal/ui/feature/auth_code_screen/auth_code_screen_model.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_model.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_model.dart';
import 'package:berrielocal/ui/feature/favorite_screen/favorite_screen_model.dart';
import 'package:berrielocal/ui/feature/login_screen/login_screen_model.dart';
import 'package:berrielocal/ui/feature/order_history_detail_screen/order_history_detail_screen_model.dart';
import 'package:berrielocal/ui/feature/order_history_screen/order_history_screen_model.dart';
import 'package:berrielocal/ui/feature/order_screen/order_screen_model.dart';
import 'package:berrielocal/ui/feature/product_add_screen/product_add_screen_model.dart';
import 'package:berrielocal/ui/feature/product_screen/product_screen_model.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_model.dart';
import 'package:berrielocal/ui/feature/search_screen/search_screen_model.dart';
import 'package:berrielocal/ui/feature/shop_edit_screen/shop_edit_screen_model.dart';
import 'package:berrielocal/ui/feature/shop_reviews_screen/shop_reviews_screen_model.dart';
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
  late final ShopEditScreenModel _shopEditScreenModel;
  late final AuthCodeScreenModel _authCodeScreenModel;
  late final FavoriteScreenModel _favoriteScreenModel;
  late final LoginScreenModel _loginScreenModel;
  late final ProductAddScreenModel _productAddScreenModel;
  late final ShopReviewsScreenModel _shopReviewsScreenModel;
  late final AddReviewScreenModel _addReviewScreenModel;
  late final OrderHistoryDetailScreenModel _detailScreenModel;

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //TODO: add repository in AppComponents
    final AuthRepository authRepository = AppComponents().authRepository;
    final ShopRepository shopRepository = AppComponents().shopRepository;
    final OrderRepository orderRepository = AppComponents().orderRepository;
    final MockShopService mockShopService = AppComponents().mockShopService;
    final MockCartService mockCartService = AppComponents().mockCartService;
    final CommentRepository commentRepository =
        AppComponents().commentRepository;
    final ProductRepository productRepository =
        AppComponents().productRepository;
    final ProfileRepository profileRepository =
        AppComponents().profileRepository;
    final MockProductService mockProductService =
        AppComponents().mockProductService;
    final CartRepository cartRepository = AppComponents().cartRepository;

    //TODO: init models
    _showcaseScreenModel = ShowcaseScreenModel(errorHandler, mockShopService);
    _cartScreenModel = CartScreenModel(errorHandler);
    _searchScreenModel = SearchScreenModel(
      shopRepository,
      errorHandler,
    );
    _shopScreenModel = ShopScreenModel(errorHandler, mockProductService);
    _productScreenModel = ProductScreenModel(errorHandler);
    _authScreenModel = AuthScreenModel(errorHandler, authRepository);
    _profileScreenModel = ProfileScreenModel(errorHandler, authRepository);
    _orderScreenModel = OrderScreenModel(errorHandler);
    _orderHistoryScreenModel = OrderHistoryScreenModel(errorHandler);
    _shopEditScreenModel =
        ShopEditScreenModel(errorHandler, mockProductService);
    _authCodeScreenModel = AuthCodeScreenModel(errorHandler, authRepository);
    _favoriteScreenModel = FavoriteScreenModel(errorHandler);
    _loginScreenModel = LoginScreenModel(errorHandler, authRepository);
    _productAddScreenModel = ProductAddScreenModel(errorHandler);
    _shopReviewsScreenModel = ShopReviewsScreenModel(errorHandler);
    _addReviewScreenModel = AddReviewScreenModel(errorHandler);
    _detailScreenModel = OrderHistoryDetailScreenModel(errorHandler);
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
        Provider(
          create: (context) => _shopEditScreenModel,
        ),
        Provider(
          create: (context) => _authCodeScreenModel,
        ),
        Provider(
          create: (context) => _favoriteScreenModel,
        ),
        Provider(
          create: (context) => _loginScreenModel,
        ),
        Provider(
          create: (context) => _productAddScreenModel,
        ),
        Provider(
          create: (context) => _shopReviewsScreenModel,
        ),
        Provider(
          create: (context) => _addReviewScreenModel,
        ),
        Provider(
          create: (context) => _detailScreenModel,
        ),
      ],
      child: widget.app,
    );
  }
}
