import 'package:flutter/material.dart';
import 'package:flutter_app_weather_25042023/data/repository/weather_repository.dart';
import 'package:flutter_app_weather_25042023/presentation/page/search_temp_city/bloc/search_temp_city_bloc.dart';
import 'package:flutter_app_weather_25042023/presentation/page/search_temp_city/bloc/search_temp_city_event.dart';
import 'package:provider/provider.dart';
class SearchTempCityPage extends StatefulWidget {
  const SearchTempCityPage({Key? key}) : super(key: key);

  @override
  State<SearchTempCityPage> createState() => _SearchTempCityPageState();
}

class _SearchTempCityPageState extends State<SearchTempCityPage> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => WeatherRepository()),
        ProxyProvider<WeatherRepository, SearchTempCityBloc>(
          create: (context) => SearchTempCityBloc(),
          update: (context, repository, bloc) {
            bloc?.setWeatherRepository(repository);
            return bloc ??= SearchTempCityBloc();
          },
        )
      ],
      child: SearchTempCityContainer(),
    );
  }
}

class SearchTempCityContainer extends StatefulWidget {
  const SearchTempCityContainer({Key? key}) : super(key: key);

  @override
  State<SearchTempCityContainer> createState() => _SearchTempCityContainerState();
}

class _SearchTempCityContainerState extends State<SearchTempCityContainer> {

  SearchTempCityBloc? bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = context.read();
    bloc?.getTempFromCityName(SearchTempFromCityNameEvent("Hanoi"));
    bloc?.weatherCityValueObjectStream.listen((event) {
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

