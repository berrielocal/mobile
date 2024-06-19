import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/extensions/snack_bar.dart';
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
  void toPolicy();
  Future<void> toProfile();
  AuthRepository get authRepository;
  ProfileRepository get profileRepository;
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
  Future<void> toProfile() async {
    AppMetrica.reportEvent('validation');
    final result = await model.authPart2(emailController.text);
    if (result) {
      await profileRepository.loadProfile();
      AppMetrica.reportEvent('registration');
      context.router.navigate(ProfileRoute());
    } else {
      context.showSnackBar('Неправильный код! Повторите попытку');
    }
  }

  @override
  AuthRepository authRepository = AppComponents().authRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  void toPolicy() {
    context.router.navigate(PolicyRoute());
  }
}
