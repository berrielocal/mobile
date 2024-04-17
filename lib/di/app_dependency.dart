import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/ui/feature/profile_screen/profile_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:berrielocal/ui/feature/test_page/test_page.dart';

import 'package:berrielocal/data/test/test_data.dart';
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
  late final TestPageModel _testPageModel;
  late final ProfileScreenModel _profileScreenModel;

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //TODO: add repository in AppComponents
    final TestRepository testRepository = AppComponents().testRepository;
    final AuthRepository authRepository = AppComponents().authRepository;

    //TODO: init models
    _testPageModel = TestPageModel(
      errorHandler,
      testRepository,
      authRepository,
    );

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
          create: (context) => _testPageModel,
        ),
        Provider(
          create: (context) => _profileScreenModel,
        )
      ],
      child: widget.app,
    );
  }
}
