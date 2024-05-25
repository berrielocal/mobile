import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/domain/user/user_registration_request.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for AuthScreen module
class AuthScreenModel extends ElementaryModel {
  final AuthRepository _authRepository;

  AuthScreenModel(ErrorHandler errorHandler, this._authRepository)
      : super(errorHandler: errorHandler);

  Future<void> authPart1(String email, String password, String shopName) async {
    try {
      await _authRepository.emailPart1(
        request: UserRegistrationRequest(
          email: email,
          password: password,
          name: shopName,
        ),
      );
    } catch (e, s) {
      Error.throwWithStackTrace(e, s);
    }
  }
}
