import 'package:flutter/material.dart';
import 'package:C:\flutter\weatherapp\lib\network\networkfile.dart';
import 'package:C:\flutter\weatherapp\lib\weatherforecast\weatherforecastmodel.dart';

void main() {
  runApp(MaterialApp());
}

class weatherforecast extends StatefulWidget {
  const weatherforecast({Key? key}) : super(key: key);

  @override
  _weatherforecastState createState() => _weatherforecastState();
}

class _weatherforecastState extends State<weatherforecast> {
  Future<weathermodel> forecastOject;
  String _cityName = "Bengaluru";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forecastOject = Network().getweatherforecast(_cityName: _cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forecast")),
    );
  }
}
