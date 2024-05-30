// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthCodeRoute.name: (routeData) {
      final args = routeData.argsAs<AuthCodeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthCodeScreenWidget(
          email: args.email,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    FavoriteCategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteCategoriesScreenWidget(),
      );
    },
    FavoriteRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteRouteArgs>(
          orElse: () => const FavoriteRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavoriteScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenWidget(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<OrderHistoryRouteArgs>(
          orElse: () => const OrderHistoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderHistoryScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>(
          orElse: () => const OrderRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderSuccessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderSuccessScreenWidget(),
      );
    },
    PolicyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PolicyScreenWidget(),
      );
    },
    ProductAddRoute.name: (routeData) {
      final args = routeData.argsAs<ProductAddRouteArgs>(
          orElse: () => const ProductAddRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductAddScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () =>
              ProductRouteArgs(productId: pathParams.getInt('productId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreenWidget(
          key: args.key,
          productId: args.productId,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShopEditRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ShopEditRouteArgs>(
          orElse: () => ShopEditRouteArgs(shopId: pathParams.getInt('shopId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShopEditScreenWidget(
          key: args.key,
          shopId: args.shopId,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShopRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ShopRouteArgs>(
          orElse: () => ShopRouteArgs(shopId: pathParams.getInt('shopId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShopScreenWidget(
          key: args.key,
          shopId: args.shopId,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShowCaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCaseTabPage(),
      );
    },
    ShowcaseRoute.name: (routeData) {
      final args = routeData.argsAs<ShowcaseRouteArgs>(
          orElse: () => const ShowcaseRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShowcaseScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthCodeScreenWidget]
class AuthCodeRoute extends PageRouteInfo<AuthCodeRouteArgs> {
  AuthCodeRoute({
    required String email,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthCodeScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthCodeRoute.name,
          args: AuthCodeRouteArgs(
            email: email,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthCodeRoute';

  static const PageInfo<AuthCodeRouteArgs> page =
      PageInfo<AuthCodeRouteArgs>(name);
}

class AuthCodeRouteArgs {
  const AuthCodeRouteArgs({
    required this.email,
    this.key,
    this.wmFactory = defaultAuthCodeScreenWidgetModelFactory,
  });

  final String email;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthCodeRouteArgs{email: $email, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AuthScreenWidget]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.wmFactory = defaultAuthScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CartScreenWidget]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<CartRouteArgs> page = PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    this.wmFactory = defaultCartScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteCategoriesScreenWidget]
class FavoriteCategoriesRoute extends PageRouteInfo<void> {
  const FavoriteCategoriesRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteCategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteScreenWidget]
class FavoriteRoute extends PageRouteInfo<FavoriteRouteArgs> {
  FavoriteRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFavoriteScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FavoriteRoute.name,
          args: FavoriteRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<FavoriteRouteArgs> page =
      PageInfo<FavoriteRouteArgs>(name);
}

class FavoriteRouteArgs {
  const FavoriteRouteArgs({
    this.key,
    this.wmFactory = defaultFavoriteScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FavoriteRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [HomeScreenWidget]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreenWidget]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultLoginScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.wmFactory = defaultLoginScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderHistoryScreenWidget]
class OrderHistoryRoute extends PageRouteInfo<OrderHistoryRouteArgs> {
  OrderHistoryRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderHistoryScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderHistoryRoute.name,
          args: OrderHistoryRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderHistoryRoute';

  static const PageInfo<OrderHistoryRouteArgs> page =
      PageInfo<OrderHistoryRouteArgs>(name);
}

class OrderHistoryRouteArgs {
  const OrderHistoryRouteArgs({
    this.key,
    this.wmFactory = defaultOrderHistoryScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderHistoryRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderScreenWidget]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<OrderRouteArgs> page = PageInfo<OrderRouteArgs>(name);
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    this.wmFactory = defaultOrderScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderSuccessScreenWidget]
class OrderSuccessRoute extends PageRouteInfo<void> {
  const OrderSuccessRoute({List<PageRouteInfo>? children})
      : super(
          OrderSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderSuccessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PolicyScreenWidget]
class PolicyRoute extends PageRouteInfo<void> {
  const PolicyRoute({List<PageRouteInfo>? children})
      : super(
          PolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PolicyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductAddScreenWidget]
class ProductAddRoute extends PageRouteInfo<ProductAddRouteArgs> {
  ProductAddRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProductAddScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProductAddRoute.name,
          args: ProductAddRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductAddRoute';

  static const PageInfo<ProductAddRouteArgs> page =
      PageInfo<ProductAddRouteArgs>(name);
}

class ProductAddRouteArgs {
  const ProductAddRouteArgs({
    this.key,
    this.wmFactory = defaultProductAddScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProductAddRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProductScreenWidget]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int productId,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProductScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            productId: productId,
            wmFactory: wmFactory,
          ),
          rawPathParams: {'productId': productId},
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.productId,
    this.wmFactory = defaultProductScreenWidgetModelFactory,
  });

  final Key? key;

  final int productId;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, productId: $productId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreenWidget]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultSearchScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.wmFactory = defaultSearchScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShopEditScreenWidget]
class ShopEditRoute extends PageRouteInfo<ShopEditRouteArgs> {
  ShopEditRoute({
    Key? key,
    required int shopId,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShopEditScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShopEditRoute.name,
          args: ShopEditRouteArgs(
            key: key,
            shopId: shopId,
            wmFactory: wmFactory,
          ),
          rawPathParams: {'shopId': shopId},
          initialChildren: children,
        );

  static const String name = 'ShopEditRoute';

  static const PageInfo<ShopEditRouteArgs> page =
      PageInfo<ShopEditRouteArgs>(name);
}

class ShopEditRouteArgs {
  const ShopEditRouteArgs({
    this.key,
    required this.shopId,
    this.wmFactory = defaultShopEditScreenWidgetModelFactory,
  });

  final Key? key;

  final int shopId;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShopEditRouteArgs{key: $key, shopId: $shopId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShopScreenWidget]
class ShopRoute extends PageRouteInfo<ShopRouteArgs> {
  ShopRoute({
    Key? key,
    required int shopId,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShopScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShopRoute.name,
          args: ShopRouteArgs(
            key: key,
            shopId: shopId,
            wmFactory: wmFactory,
          ),
          rawPathParams: {'shopId': shopId},
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const PageInfo<ShopRouteArgs> page = PageInfo<ShopRouteArgs>(name);
}

class ShopRouteArgs {
  const ShopRouteArgs({
    this.key,
    required this.shopId,
    this.wmFactory = defaultShopScreenWidgetModelFactory,
  });

  final Key? key;

  final int shopId;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShopRouteArgs{key: $key, shopId: $shopId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShowCaseTabPage]
class ShowCaseTab extends PageRouteInfo<void> {
  const ShowCaseTab({List<PageRouteInfo>? children})
      : super(
          ShowCaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowcaseScreenWidget]
class ShowcaseRoute extends PageRouteInfo<ShowcaseRouteArgs> {
  ShowcaseRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShowcaseScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShowcaseRoute.name,
          args: ShowcaseRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ShowcaseRoute';

  static const PageInfo<ShowcaseRouteArgs> page =
      PageInfo<ShowcaseRouteArgs>(name);
}

class ShowcaseRouteArgs {
  const ShowcaseRouteArgs({
    this.key,
    this.wmFactory = defaultShowcaseScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShowcaseRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
