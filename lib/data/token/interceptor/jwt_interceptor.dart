import 'package:berrielocal/data/token/repository/token_repository.dart';
import 'package:berrielocal/domain/user/user_refresh_request.dart';
import 'package:dio/dio.dart';

/// Interceptor for working with JWT tokens, updating and saving them.
/// Requires [Dio] to work.

class JWTInterceptor extends QueuedInterceptor {
  /// Create instance of [JWTInterceptor].
  JWTInterceptor({
    required this.repository,
    required Dio dio,
  }) : _dio = dio;

  final TokenRepository repository;

  /// Http client.
  final Dio _dio;

  /// JWT token.
  String? get _accessToken => repository.accessToken;

  /// JWT refresh token.
  String? get _refreshToken => repository.refreshToken;

  /// Add JWT authorization token to any request, if available.
  @override
  void onRequest(options, handler) {
    if (_accessToken != null &&
        options.path != '/api/v1/users/login' &&
        options.path != '/api/v1/users/registration' &&
        options.path != '/api/v1/users/refresh') {
      options.headers['AccessToken'] = '$_accessToken';
    }

    return super.onRequest(options, handler);
  }

  /// Save tokens received after authorization.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path.contains('/api/v1/users/registration') ||
        response.requestOptions.path == '/api/v1/users/login') {
      repository.saveTokens(
        accessToken: response.data['accessToken'],
        refreshToken: response.data['refreshToken'],
      );
    }

    super.onResponse(response, handler);
  }

  /// Update JWT token if it is outdated.
  @override
  Future onError(error, handler) async {
    if ((error.response?.statusCode == 403 ||
            error.response?.statusCode == 401) &&
        (error.requestOptions.path != '/api/v1/users/registration' &&
            error.requestOptions.path != '/api/v1/users/login' &&
            error.requestOptions.path != '/api/v1/users/activate')) {
      await _refresh();
      if (repository.auth) {
        final response = await _retry(error.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(error, handler);
  }

  /// Make a request to update the JWT token and save it to cache.
  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return;
    }

    try {
      final response = await _dio.post(
        '/api/v1/users/refresh',
        data: UserRefreshRequest(
          refreshToken: _refreshToken,
        ),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        repository.saveTokens(
          accessToken: response.data['accessToken'],
          refreshToken: response.data['refreshToken'],
        );
      }
    } catch (e) {
      repository.deleteTokens();
    }
  }

  /// Repeat the failed request.
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
