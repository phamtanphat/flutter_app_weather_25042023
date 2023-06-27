import 'package:flutter/material.dart';
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
