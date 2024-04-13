import 'dart:async';

import 'package:berrielocal/di/app_dependency.dart';
import 'package:flutter/material.dart';

import 'di/app.dart';
import 'di/app_components.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppComponents().init();
  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
