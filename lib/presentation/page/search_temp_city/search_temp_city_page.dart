import 'package:flutter/material.dart';
import 'package:flutter_app_weather_25042023/data/api/dio_client.dart';
class SearchTempCityPage extends StatefulWidget {
  const SearchTempCityPage({Key? key}) : super(key: key);

  @override
  State<SearchTempCityPage> createState() => _SearchTempCityPageState();
}

class _SearchTempCityPageState extends State<SearchTempCityPage> {

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
