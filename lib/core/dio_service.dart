import 'package:countries_app/core/error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

///all general dio configurations
class DioService {
  DioService._privateConstructor();

  /// initializing dio singleton
  static final DioService instance = DioService._privateConstructor();

  /// instantiating dio
  Dio dio = Dio();

  /// a function to connect dio globally in an app
  void setup() {
    dio.options.baseUrl = dotenv.env['BASEURL']!;

    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);

    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    dio.interceptors.add(ErrorInterceptor());
  }
}
