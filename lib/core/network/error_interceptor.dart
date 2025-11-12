import 'package:countries_app/core/network/error_model.dart';
import 'package:dio/dio.dart';

/// An interceptor to handle all Dio errors and normalize them into [ErrorModel].
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('Request Path: ${err.requestOptions.path}');
    print('Request Extra: ${err.requestOptions.extra}');

    final bool useErrorInterceptor =
        (err.requestOptions.extra['useErrorInterceptor'] ?? true) as bool;

    print('useErrorInterceptor: $useErrorInterceptor');

    // Skip handling if explicitly disabled
    if (!useErrorInterceptor) {
      handler.next(err);
      return;
    }

    final apiError = _handleError(err);

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: apiError,
        message: apiError.message.join('\n'),
      ),
    );
  }

  /// Extracts a clean [ErrorModel] from the Dio error response
  ErrorModel _handleError(DioException error) {
    if (error.response != null && error.response?.data != null) {
      try {
        final errorData = error.response!.data;

        if (errorData is ErrorModel) {
          return errorData;
        }

        if (errorData is Map<String, dynamic>) {
          return ErrorModel.fromMap(errorData);
        }

        if (errorData is String) {
          try {
            return ErrorModel.fromJson(errorData);
          } catch (_) {
            return ErrorModel(
              message: [errorData],
              error: 'Raw Error',
              statusCode: error.response?.statusCode ?? 500,
            );
          }
        }

        return ErrorModel(
          message: ['Unexpected error format'],
          error: 'Unexpected Error',
          statusCode: error.response?.statusCode ?? 500,
        );
      } catch (e) {
        return ErrorModel(
          message: ['Failed to parse error response'],
          error: 'Parsing Error',
          statusCode: error.response?.statusCode ?? 500,
        );
      }
    } else {
      return ErrorModel(
        message: [error.message ?? 'No response from server'],
        error: 'Network Error',
        statusCode: 0,
      );
    }
  }
}
