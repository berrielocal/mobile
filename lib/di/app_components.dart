import 'package:berrielocal/data/service/auth_service.dart';
import 'package:berrielocal/data/service_mock/cart_service.dart';
import 'package:berrielocal/data/service_mock/product_service.dart';
import 'package:berrielocal/data/service_mock/shop_service.dart';
import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
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
  late final AuthService _authService = AuthService(dio);

  //repository
  late final TokenRepository tokenRepository = TokenRepository();
  late final AuthRepository authRepository = AuthRepository(_authService);
  late final MockShopService mockShopService = MockShopService();
  late final MockCartService mockCartService = MockCartService();
  late final MockProductService mockProductService = MockProductService();

  Future<void> init() async {
    dio.options
      ..baseUrl = 'http://217.25.92.9:1111'
      ..contentType = Headers.jsonContentType
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
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