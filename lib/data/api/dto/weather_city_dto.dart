class WeatherCityDTO {
  List<WeatherDTO>? weatherDTO;
  String? baseDTO;
  MainDTO? mainDTO;
  WindDTO? windDTO;
  int? dtDTO;
  SysDTO? sysDTO;
  String? nameDTO;

  WeatherCityDTO({
    this.weatherDTO,
    this.baseDTO,
    this.mainDTO,
    this.windDTO,
    this.sysDTO,
    this.nameDTO
  });

  WeatherCityDTO.fromJson(Map<String, dynamic> json) {
    if (json['weather'] != null) {
      weatherDTO = List.empty();
      json['weather'].forEach((v) {
        weatherDTO?.add(WeatherDTO.fromJson(v));
      });
    }
    baseDTO = json['base'];
    dtDTO = json['dt'];
    nameDTO = json['name'];
    mainDTO = json['main'] != null ? MainDTO.fromJson(json['main']) : null;
    windDTO = json['wind'] != null ? WindDTO.fromJson(json['wind']) : null;
    sysDTO = json['sys'] != null ? SysDTO.fromJson(json['sys']) : null;
  }
}

class CoordDTO {
  double? lon;
  double? lat;

  CoordDTO({this.lon, this.lat});

  CoordDTO.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }
}

class WeatherDTO {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherDTO({this.id, this.main, this.description, this.icon});

  WeatherDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
}

class MainDTO {
  int? temp;
  int? feelsLike;
  int? tempMin;
  int? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  MainDTO({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel
  });

  MainDTO.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
  }
}

class WindDTO {
  double? speed;
  int? deg;
  double? gust;

  WindDTO({this.speed, this.deg, this.gust});

  WindDTO.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
}

class SysDTO {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  SysDTO({this.type, this.id, this.country, this.sunrise, this.sunset});

  SysDTO.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
}
