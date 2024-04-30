import 'dart:async';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:berrielocal/di/app_dependency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'di/app.dart';
import 'di/app_components.dart';

AppMetricaConfig get config =>
    const AppMetricaConfig('4a66c15a-242f-4a11-8994-91d4842e4562', logs: true);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppMetrica.activate(config);
  await AppComponents().init();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
