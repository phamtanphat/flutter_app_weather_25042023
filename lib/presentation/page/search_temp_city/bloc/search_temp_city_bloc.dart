import 'package:dio/dio.dart';
import 'dart:async';
import 'package:flutter_app_weather_25042023/data/api/dto/weather_city_dto.dart';
import 'package:flutter_app_weather_25042023/data/model/weather_city_value_object.dart';
import 'package:flutter_app_weather_25042023/data/repository/weather_repository.dart';
import 'package:flutter_app_weather_25042023/presentation/base/base_bloc.dart';
import 'package:flutter_app_weather_25042023/presentation/base/base_event.dart';
import 'package:flutter_app_weather_25042023/presentation/page/search_temp_city/bloc/search_temp_city_event.dart';
import 'package:flutter_app_weather_25042023/util/throwable_util.dart';
import 'package:flutter_app_weather_25042023/util/weather_city_parser.dart';

class SearchTempCityBloc extends BaseBloc {

  WeatherRepository? _weatherRepository;

  final StreamController<WeatherCityValueObject> _weatherCityValueObjectController = StreamController();
  Stream<WeatherCityValueObject> get weatherCityValueObjectStream => _weatherCityValueObjectController.stream;

  final StreamController<String> _message = StreamController();
  Stream<String> get messageStream => _message.stream;

  void setWeatherRepository(WeatherRepository weatherRepository) {
    _weatherRepository = weatherRepository;
  }

  @override
  void dispatch(BaseEvent event) {
    if (event is SearchTempFromCityNameEvent) {
      getTempFromCityName(event);
    }
  }

  void getTempFromCityName(SearchTempFromCityNameEvent event) async {
    setLoading = true;
    try {
      Response<dynamic> response = await _weatherRepository?.executeSearchTempForCity(event.cityName);
      var weatherCityValueObject = await WeatherCityParser.parseWeatherCityValueObject(response.data);
      _weatherCityValueObjectController.sink.add(weatherCityValueObject);
    } on DioException catch(dioException) {
      var message = ThrowableUtil.parserThrowableFromJson(dioException.response?.data);
      if (message.isNotEmpty) {
        _message.sink.add(message);
      }
    } catch(e) {
      _message.sink.add(e.toString());
    } finally {
      setLoading = false;
    }
  }
}
