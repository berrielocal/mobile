import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'auth_screen_model.dart';
import 'auth_screen_widget.dart';

abstract interface class IAuthScreenWidgetModel implements IWidgetModel {
  void back();
  Future<void> authCode();
  TextEditingController get emailController;
  TextEditingController get passwordController;
  TextEditingController get repeatPasswordController;
  TextEditingController get shopController;
}

AuthScreenWidgetModel defaultAuthScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<AuthScreenModel>();
  return AuthScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for AuthScreenWidget
class AuthScreenWidgetModel
    extends WidgetModel<AuthScreenWidget, AuthScreenModel>
    implements IAuthScreenWidgetModel {
  AuthScreenWidgetModel(AuthScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  final emailController = TextEditingController();

  @override
  final repeatPasswordController = TextEditingController();

  @override
  Future<void> authCode() async {
    context.router.push(
      AuthCodeRoute(email: emailController.text),
    );
    await model.authPart1(
      emailController.text,
      passwordController.text,
    );
  }

  @override
  final passwordController = TextEditingController();

  @override
  final shopController = TextEditingController();
}
