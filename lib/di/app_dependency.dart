import 'package:berrielocal/data/service/cart_service.dart';
import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/ui/feature/cart_screen/cart_screen_model.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_model.dart';
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

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //TODO: add repository in AppComponents
    final AuthRepository authRepository = AppComponents().authRepository;
    final MockShopService mockShopService = AppComponents().mockShopService;
    final MockCartService mockCartService = AppComponents().mockCartService;

    //TODO: init models
    _showcaseScreenModel = ShowcaseScreenModel(errorHandler, mockShopService);
    _cartScreenModel = CartScreenModel(errorHandler);

    _profileScreenModel = ProfileScreenModel(
      errorHandler,
    );
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
        )
      ],
      child: widget.app,
    );
  }
}
