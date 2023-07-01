class WeatherCityValueObject {
  List<WeatherValueObject>? listWeatherValueObject;
  String? base;
  MainValueObject? mainValueObject;
  WindValueObject? windValueObject;
  num? timeGetTemp;
  SysValueObject? sysValueObject;
  String? cityName;

  WeatherCityValueObject({
    this.listWeatherValueObject,
    this.base,
    this.mainValueObject,
    this.windValueObject,
    this.sysValueObject,
    this.cityName,
    this.timeGetTemp
  });
}

class WeatherValueObject {
  String? main;
  String? description;
  String? icon;

  WeatherValueObject({this.main, this.description, this.icon});
}

class MainValueObject {
  num? temp;
  num? tempMin;
  num? tempMax;
  num? pressure;
  num? humidity;

  MainValueObject({
    this.temp,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity
  });
}

class WindValueObject {
  num? speed;

  WindValueObject({this.speed});
}

class SysValueObject {
  String? country;

  SysValueObject({this.country});
}
