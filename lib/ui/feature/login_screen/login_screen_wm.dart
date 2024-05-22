import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
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
  AuthRepository get authRepository;
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
    // try {
    //   await model.login(emailController.text, passwordController.text);
    //   context.router.popUntilRoot();
    // } on DioException catch (e) {
    //   if (e.response?.statusCode == 403) {
    //     context.router.navigate(AuthRoute());
    //   }
    // }
    try {
      await authRepository.login(
        request: UserAuthorizationRequest(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
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
  // TODO: implement emailController
  TextEditingController emailController = TextEditingController();

  @override
  // TODO: implement passwordController
  TextEditingController passwordController = TextEditingController();

  @override
  // TODO: implement authRepository
  AuthRepository authRepository = AppComponents().authRepository;
}