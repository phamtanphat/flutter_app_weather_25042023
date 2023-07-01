import 'package:flutter/material.dart';
import 'package:flutter_app_weather_25042023/data/api/dio_client.dart';
import 'package:flutter_app_weather_25042023/data/repository/weather_repository.dart';
import 'package:flutter_app_weather_25042023/presentation/page/search_temp_city/bloc/search_temp_city_bloc.dart';

import 'bloc/search_temp_city_event.dart';
class SearchTempCityPage extends StatefulWidget {
  const SearchTempCityPage({Key? key}) : super(key: key);

  @override
  State<SearchTempCityPage> createState() => _SearchTempCityPageState();
}

class _SearchTempCityPageState extends State<SearchTempCityPage> {

  @override
  void didUpdateWidget(covariant SearchTempCityPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    SearchTempCityBloc searchBloc = SearchTempCityBloc(weatherRepository: WeatherRepository());
    searchBloc.getTempFromCityName(SearchTempFromCityNameEvent("Hanoi"));
    searchBloc.weatherCityValueObjectStream.listen((event) {
      print("Cos");
      print(event.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Temp City"),
      ),
      body: Container(),
    );
  }
}
