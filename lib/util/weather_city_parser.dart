import 'package:flutter_app_weather_25042023/data/api/dto/weather_city_dto.dart';
import 'package:flutter_app_weather_25042023/data/model/weather_city_value_object.dart';

class WeatherCityParser {

  static WeatherCityValueObject parseWeatherCityValueObject(WeatherCityDTO weatherCityDTO) {
    // Weather DTO
    List<WeatherValueObject> listWeatherValueObject = List.empty(growable: true);
    weatherCityDTO.weatherDTO?.forEach((e) {
      listWeatherValueObject.add(
          WeatherValueObject(
            main: e.main,
            description: e.description,
            icon: e.icon)
      );
    });

    // Main DTO
    var mainDto = weatherCityDTO.mainDTO;
    MainValueObject mainValueObject = MainValueObject(
      temp: mainDto?.temp,
      humidity: mainDto?.humidity,
      pressure: mainDto?.pressure,
      tempMax: mainDto?.tempMax,
      tempMin: mainDto?.tempMin
    );

    // Wind DTO
    var windDto = weatherCityDTO.windDTO;
    WindValueObject windValueObject = WindValueObject(
        speed: windDto?.speed
    );

    // Sys DTO
    var sysDto = weatherCityDTO.sysDTO;
    SysValueObject sysValueObject = SysValueObject(
        country: sysDto?.country
    );

    return WeatherCityValueObject(
        timeGetTemp: weatherCityDTO.dtDTO,
        listWeatherValueObject: listWeatherValueObject,
        base: weatherCityDTO.baseDTO,
        mainValueObject: mainValueObject,
        windValueObject: windValueObject,
        sysValueObject: sysValueObject,
        cityName: weatherCityDTO.nameDTO
    );
  }
}