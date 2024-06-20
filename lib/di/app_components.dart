import 'package:berrielocal/data/repository/cart_repository.dart';
import 'package:berrielocal/data/repository/comment_repository.dart';
import 'package:berrielocal/data/repository/order_repository.dart';
import 'package:berrielocal/data/service/auth_service.dart';
import 'package:berrielocal/data/service/cart_service.dart';
import 'package:berrielocal/data/service/comment_service.dart';
import 'package:berrielocal/data/service/order_service.dart';
import 'package:berrielocal/data/service/product_service.dart';
import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/data/service_mock/cart_service_mock.dart';
import 'package:berrielocal/data/service_mock/product_service_mock.dart';
import 'package:berrielocal/data/service_mock/shop_service_mock.dart';
import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:berrielocal/data/token/token_data.dart';
import 'package:berrielocal/utils/error_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  late final ShopService _shopService = ShopService(dio);
  late final CartService _cartService = CartService(dio);
  late final OrderService _orderService = OrderService(dio);
  late final ProductService _productService = ProductService(dio);
  late final CommentService _commentService = CommentService(dio);
  //repository
  late final TokenRepository tokenRepository = TokenRepository();
  late final AuthRepository authRepository = AuthRepository(
    _authService,
    _shopService,
  );
  late final OrderRepository orderRepository = OrderRepository(
    _orderService,
  );
  late final ShopRepository shopRepository = ShopRepository(
    _shopService,
  );
  late final CartRepository cartRepository = CartRepository(_cartService);
  late final ProfileRepository profileRepository = ProfileRepository(
    tokenRepository,
    authRepository,
  );
  late final ProductRepository productRepository =
      ProductRepository(_productService);
  late final CommentRepository commentRepository =
      CommentRepository(_commentService);
  late final MockShopService mockShopService = MockShopService();
  late final MockCartService mockCartService = MockCartService();
  late final MockProductService mockProductService = MockProductService();
  late final SharedPreferences sharedPreferences;

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
    sharedPreferences = await SharedPreferences.getInstance();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
  }

  Future<void> dispose() async {}
}
