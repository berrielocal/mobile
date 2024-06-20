import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for AuthCodeScreen module
class AuthCodeScreenModel extends ElementaryModel {
  final AuthRepository authRepository;
  AuthCodeScreenModel(
    ErrorHandler errorHandler,
    this.authRepository,
  ) : super(errorHandler: errorHandler);

  Future<bool> authPart2(String activationCode) {
    try {
      final result = authRepository.emailPart2(activationCode: activationCode);
      return result;
    } catch (e, s) {
      rethrow;
    }
  }
}
