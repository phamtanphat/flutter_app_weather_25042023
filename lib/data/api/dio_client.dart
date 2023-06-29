import 'package:dio/dio.dart';
import 'package:flutter_app_weather_25042023/common/app_constants.dart';

class DioClient {
  // Singleton pattern
  static Dio? _instance;

  static Dio getInstance() => _instance ??= createDio();

  static Dio createDio() {
      Dio dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        baseUrl: AppConstants.BASE_URL
      ));

      dio.interceptors.add(LogInterceptor());
      return dio;
  }
}
