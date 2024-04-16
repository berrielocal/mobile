import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/domain/user/user_registration_request.dart';
import 'package:elementary/elementary.dart';
import 'package:berrielocal/data/test/test_data.dart';
import 'package:berrielocal/domain/test/test.dart';

class TestPageModel extends ElementaryModel {
  final TestRepository _testRepository;
  final AuthRepository _authRepository;

  TestPageModel(
    ErrorHandler errorHandler,
    this._testRepository,
    this._authRepository,
  ) : super(errorHandler: errorHandler);

  Future<List<Test>> loadTestList() async {
    try {
      final res = _testRepository.getAll();
      return res;
    } on Exception catch (e) {
      handleError(e);
      rethrow;
    }
  }

  Future<void> auth() async {
    try {
      await _authRepository.emailPart1(
        request: const UserRegistrationRequest(
          email: 'nep3600@gmail.com',
          password: 'maxsosipenis',
        ),
      );
    } catch (e, s) {
      Error.throwWithStackTrace(e, s);
    }
  }
}
