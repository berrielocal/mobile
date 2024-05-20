import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/domain/user/user_id_response.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for ProfileScreen module
class ProfileScreenModel extends ElementaryModel {
  final AuthRepository repository;
  ProfileScreenModel(
    ErrorHandler errorHandler,
    this.repository,
  ) : super(errorHandler: errorHandler);

  Future<UserIdResponse> getUserById() async {
    try {
      final result = await repository.getUserById();
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
