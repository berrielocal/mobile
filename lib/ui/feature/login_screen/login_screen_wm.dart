import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/user/user_authorization_request.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_screen_model.dart';
import 'login_screen_widget.dart';

abstract interface class ILoginScreenWidgetModel implements IWidgetModel {
  void back();
  Future<void> login();
  void toPolicy();
  AuthRepository get authRepository;
  ProfileRepository get profileRepository;
  TextEditingController get emailController;
  TextEditingController get passwordController;
}

LoginScreenWidgetModel defaultLoginScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<LoginScreenModel>();
  return LoginScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for LoginScreenWidget
class LoginScreenWidgetModel
    extends WidgetModel<LoginScreenWidget, LoginScreenModel>
    implements ILoginScreenWidgetModel {
  LoginScreenWidgetModel(LoginScreenModel model) : super(model);

  @override
  Future<void> login() async {
    try {
      await authRepository.login(
        request: UserAuthorizationRequest(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      await profileRepository.loadProfile();
      context.router.popUntilRoot();
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 403) {
        context.router.navigate(AuthRoute());
      }
    } catch (e, s) {
      Error.throwWithStackTrace(e, s);
    }
  }

  @override
  void back() {
    context.router.pop();
  }

  @override
  TextEditingController emailController = TextEditingController();

  @override
  TextEditingController passwordController = TextEditingController();

  @override
  AuthRepository authRepository = AppComponents().authRepository;

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;

  @override
  void toPolicy() {
    context.router.navigate(PolicyRoute());
  }
}
