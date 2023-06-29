import 'package:flutter_app_weather_25042023/data/repository/weather_repository.dart';

class SearchTempCityBloc {

  WeatherRepository weatherRepository;

  SearchTempCityBloc({required this.weatherRepository});

  void getTempFromCityName(String cityName) {
    weatherRepository.executeSearchTempForCity(cityName);
  }
}
