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
    AuthRouteWidget.name: (routeData) {
      final args = routeData.argsAs<AuthRouteWidgetArgs>(
          orElse: () => const AuthRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CartRouteWidget.name: (routeData) {
      final args = routeData.argsAs<CartRouteWidgetArgs>(
          orElse: () => const CartRouteWidgetArgs());
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
    EmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    OrderHistoryRouteWidget.name: (routeData) {
      final args = routeData.argsAs<OrderHistoryRouteWidgetArgs>(
          orElse: () => const OrderHistoryRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderHistoryScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderRouteWidget.name: (routeData) {
      final args = routeData.argsAs<OrderRouteWidgetArgs>(
          orElse: () => const OrderRouteWidgetArgs());
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
        child: const OrderSuccessScreen(),
      );
    },
    ProductRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ProductRouteWidgetArgs>(
          orElse: () => const ProductRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteWidgetArgs>(
          orElse: () => const ProfileRouteWidgetArgs());
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
    SearchRouteWidget.name: (routeData) {
      final args = routeData.argsAs<SearchRouteWidgetArgs>(
          orElse: () => const SearchRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShopRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ShopRouteWidgetArgs>(
          orElse: () => const ShopRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShopScreenWidget(
          key: args.key,
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
    ShowcaseRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ShowcaseRouteWidgetArgs>(
          orElse: () => const ShowcaseRouteWidgetArgs());
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
/// [AuthScreenWidget]
class AuthRouteWidget extends PageRouteInfo<AuthRouteWidgetArgs> {
  AuthRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRouteWidget.name,
          args: AuthRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRouteWidget';

  static const PageInfo<AuthRouteWidgetArgs> page =
      PageInfo<AuthRouteWidgetArgs>(name);
}

class AuthRouteWidgetArgs {
  const AuthRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultAuthScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CartScreenWidget]
class CartRouteWidget extends PageRouteInfo<CartRouteWidgetArgs> {
  CartRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRouteWidget.name,
          args: CartRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRouteWidget';

  static const PageInfo<CartRouteWidgetArgs> page =
      PageInfo<CartRouteWidgetArgs>(name);
}

class CartRouteWidgetArgs {
  const CartRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultCartScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
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
/// [EmptyPage]
class EmptyRoute extends PageRouteInfo<void> {
  const EmptyRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
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
/// [OrderHistoryScreenWidget]
class OrderHistoryRouteWidget
    extends PageRouteInfo<OrderHistoryRouteWidgetArgs> {
  OrderHistoryRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderHistoryScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderHistoryRouteWidget.name,
          args: OrderHistoryRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderHistoryRouteWidget';

  static const PageInfo<OrderHistoryRouteWidgetArgs> page =
      PageInfo<OrderHistoryRouteWidgetArgs>(name);
}

class OrderHistoryRouteWidgetArgs {
  const OrderHistoryRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultOrderHistoryScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderHistoryRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderScreenWidget]
class OrderRouteWidget extends PageRouteInfo<OrderRouteWidgetArgs> {
  OrderRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRouteWidget.name,
          args: OrderRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRouteWidget';

  static const PageInfo<OrderRouteWidgetArgs> page =
      PageInfo<OrderRouteWidgetArgs>(name);
}

class OrderRouteWidgetArgs {
  const OrderRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultOrderScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderSuccessScreen]
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
/// [ProductScreenWidget]
class ProductRouteWidget extends PageRouteInfo<ProductRouteWidgetArgs> {
  ProductRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProductScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRouteWidget.name,
          args: ProductRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRouteWidget';

  static const PageInfo<ProductRouteWidgetArgs> page =
      PageInfo<ProductRouteWidgetArgs>(name);
}

class ProductRouteWidgetArgs {
  const ProductRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultProductScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProductRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileRouteWidget extends PageRouteInfo<ProfileRouteWidgetArgs> {
  ProfileRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRouteWidget.name,
          args: ProfileRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRouteWidget';

  static const PageInfo<ProfileRouteWidgetArgs> page =
      PageInfo<ProfileRouteWidgetArgs>(name);
}

class ProfileRouteWidgetArgs {
  const ProfileRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
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
class SearchRouteWidget extends PageRouteInfo<SearchRouteWidgetArgs> {
  SearchRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultSearchScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRouteWidget.name,
          args: SearchRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRouteWidget';

  static const PageInfo<SearchRouteWidgetArgs> page =
      PageInfo<SearchRouteWidgetArgs>(name);
}

class SearchRouteWidgetArgs {
  const SearchRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultSearchScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'SearchRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShopScreenWidget]
class ShopRouteWidget extends PageRouteInfo<ShopRouteWidgetArgs> {
  ShopRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShopScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShopRouteWidget.name,
          args: ShopRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ShopRouteWidget';

  static const PageInfo<ShopRouteWidgetArgs> page =
      PageInfo<ShopRouteWidgetArgs>(name);
}

class ShopRouteWidgetArgs {
  const ShopRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultShopScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShopRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
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
class ShowcaseRouteWidget extends PageRouteInfo<ShowcaseRouteWidgetArgs> {
  ShowcaseRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShowcaseScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShowcaseRouteWidget.name,
          args: ShowcaseRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ShowcaseRouteWidget';

  static const PageInfo<ShowcaseRouteWidgetArgs> page =
      PageInfo<ShowcaseRouteWidgetArgs>(name);
}

class ShowcaseRouteWidgetArgs {
  const ShowcaseRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultShowcaseScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShowcaseRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}
