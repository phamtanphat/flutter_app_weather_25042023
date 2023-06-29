import 'package:flutter/material.dart';
import 'package:flutter_app_weather_25042023/presentation/page/search_temp_city/search_temp_city_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/search_temp_city" : (context) => SearchTempCityPage()
      },
      initialRoute: "/search_temp_city",
    );
  }
}
