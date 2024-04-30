import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/ui/feature/auth_screen/auth_screen_model.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_code_screen_model.dart';
import 'auth_code_screen_widget.dart';

abstract interface class IAuthCodeScreenWidgetModel implements IWidgetModel {
  TextEditingController get emailController;
  void back();
  void toProfile();
}

AuthCodeScreenWidgetModel defaultAuthCodeScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<AuthCodeScreenModel>();
  return AuthCodeScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for AuthCodeScreenWidget
class AuthCodeScreenWidgetModel
    extends WidgetModel<AuthCodeScreenWidget, AuthCodeScreenModel>
    implements IAuthCodeScreenWidgetModel {
  AuthCodeScreenWidgetModel(AuthCodeScreenModel model) : super(model);

  @override
  TextEditingController emailController = TextEditingController();

  @override
  void back() {
    context.router.pop();
  }

  @override
  void toProfile() {
    context.router.navigate(ProfileRoute());
  }
}
