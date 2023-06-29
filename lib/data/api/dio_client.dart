import 'package:dio/dio.dart';

class DioClient {
  // Singleton pattern
  static Dio? _instance;

  static Dio getInstance() => _instance ??= createDio();

  static Dio createDio() {
      Dio dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        baseUrl: "https://api.openweathermap.org/"
      ));

      dio.interceptors.add(LogInterceptor());
      return dio;
  }
}
