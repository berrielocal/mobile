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
