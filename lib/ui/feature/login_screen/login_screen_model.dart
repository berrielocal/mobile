import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/domain/user/user_authorization_request.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for LoginScreen module
class LoginScreenModel extends ElementaryModel {
  final AuthRepository repository;
  LoginScreenModel(
    ErrorHandler errorHandler,
    this.repository,
  ) : super(errorHandler: errorHandler);

  Future<void> login(String email, String password) async {
    await repository.login(
        request: UserAuthorizationRequest(email: email, password: password));
  }
}
