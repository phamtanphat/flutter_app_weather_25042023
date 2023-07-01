import 'package:flutter_app_weather_25042023/presentation/base/base_event.dart';

class SearchTempFromCityNameEvent extends BaseEvent {
  String cityName;

  SearchTempFromCityNameEvent(this.cityName);
}