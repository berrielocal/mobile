import 'package:berrielocal/data/service/auth_service.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:berrielocal/data/test/test_data.dart';
import 'package:berrielocal/data/token/token_data.dart';
import 'package:berrielocal/utils/error_handler.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();

  //errorHandler
  ErrorHandler errorHandler = DefaultErrorHandler();

  //service
  late final ITestService _testService = MockTestService();
  late final AuthService _authService = AuthService(dio);

  //repository
  late final TokenRepository tokenRepository = TokenRepository();
  late final TestRepository testRepository = TestRepository(_testService);
  late final AuthRepository authRepository = AuthRepository(_authService);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'http://217.25.92.9:1111'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );

    await tokenRepository.initTokens();

    // dio.interceptors.add(
    //   JWTInterceptor(
    //     repository: tokenRepository,
    //     dio: dio,
    //   ),
    // );
  }

  Future<void> dispose() async {}
}
