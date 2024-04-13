import 'package:elementary/elementary.dart';

import 'logger.dart';

/// Base implementation of error handler.
/// This just print error to console.
class DefaultErrorHandler implements ErrorHandler {
  @override
  void handleError(
      Object error, {
        StackTrace? stackTrace,
      }) {
    logger.e(error);
  }
}