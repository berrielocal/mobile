import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:berrielocal/generated/l10n.dart';
import 'package:berrielocal/res/theme/app_theme.dart';
import 'package:berrielocal/res/theme/color_schemes.g.dart';
import 'package:berrielocal/utils/custom_scroll_behavior.dart';

import '../navigation/app_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ValueNotifier<ThemeMode>>();

    return MaterialApp.router(
      builder: (context, child){
        return ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: child!,
        );
      },
      title: "Test app",
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: appTheme(colorScheme: lightColorScheme),
      darkTheme: appTheme(colorScheme: darkColorScheme),
      // theme: appTheme(),
      // darkTheme: appTheme(isDark: true),
      highContrastTheme: appTheme(colorScheme: hightColorScheme),
      highContrastDarkTheme: appTheme(colorScheme: hightColorScheme),
      themeMode: themeMode.value,
      routerConfig: _appRouter.config(),
    );
  }
}