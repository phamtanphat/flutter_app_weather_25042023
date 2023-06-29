import 'package:dio/dio.dart';
import 'package:flutter_app_weather_25042023/common/app_constants.dart';
import 'package:flutter_app_weather_25042023/data/api/dio_client.dart';

class WeatherRepository {
  final Dio _dio = DioClient.getInstance();

  Future executeSearchTempForCity(String cityName) {
    _dio.get(AppConstants.SEARCH_TEMP_END_POINT_URL, queryParameters: {
      AppConstants.APP_ID_KEY: AppConstants.APP_ID_VALUE,
      AppConstants.UNITS_KEY: AppConstants.UNITS_VALUE,
      "q": cityName
    });
  }
}
