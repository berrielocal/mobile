import 'dart:async';

import 'package:berrielocal/domain/user/jwt_response.dart';
import 'package:berrielocal/domain/user/user_registration_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(
    Dio dio, {
    String baseUrl,
  }) = _AuthService;

  @POST('/api/v1/users/registration')
  Future<JwtResponse> authEmailPart1({
    @Body() required UserRegistrationRequest request,
  });
}