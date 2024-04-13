import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/generated/l10n.dart';
//import 'package:farm_app/generated/app_localizations.dart';
import 'package:flutter/material.dart';

abstract interface class IThemeProvider {
  ThemeData get theme;

  TextTheme get textTheme;

  ColorScheme get colorScheme;

  S get localizations;

  StackRouter get router;
}

mixin ThemeProvider {
  BuildContext get context;

  S get localizations => S.of(context);

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  StackRouter get router => context.router;
}
