import 'dart:async';

import 'package:berrielocal/domain/user/jwt_response.dart';
import 'package:berrielocal/domain/user/user_authorization_request.dart';
import 'package:berrielocal/domain/user/user_id_response.dart';
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

  @PATCH('/api/v1/users/activate/{activationCode}')
  Future<void> authEmailPart2({
    @Path() required String activationCode,
  });

  @GET('/api/v1/users')
  Future<UserIdResponse> getUserById();

  @POST('/api/v1/users/login')
  Future<JwtResponse> loginUser({
    @Body() required UserAuthorizationRequest request,
  });
}
