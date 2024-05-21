import 'package:berrielocal/data/service/auth_service.dart';
import 'package:berrielocal/domain/user/jwt_response.dart';
import 'package:berrielocal/domain/user/user_authorization_request.dart';
import 'package:berrielocal/domain/user/user_id_response.dart';
import 'package:berrielocal/domain/user/user_registration_request.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  AuthRepository(
    this._authService,
  );

  final AuthService _authService;

  Future<JwtResponse> emailPart1({
    required UserRegistrationRequest request,
  }) async {
    try {
      final result = await _authService.authEmailPart1(
        request: request,
      );
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  Future<JwtResponse> login({
    required UserAuthorizationRequest request,
  }) async {
    try {
      final result = await _authService.loginUser(
        request: request,
      );
      return result;
    } catch (e, s) {
      print('ffffff');
      print('ffffff');
      print('ffffff');
      throw Error.throwWithStackTrace(e, s);
    }
  }

  Future<bool> emailPart2({
    required String activationCode,
  }) async {
    try {
      await _authService.authEmailPart2(activationCode: activationCode);
      return true;
    } on DioException catch (error) {
      return false;
    }
  }

  Future<UserIdResponse> getUserById() async {
    try {
      final result = await _authService.getUserById();
      return result;
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
