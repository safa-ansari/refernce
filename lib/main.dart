import 'package:flutter/material.dart';
import 'package:weatherapp/network/networkfile.dart';
import 'package:weatherapp/weatherforecast/weatherforecastmodel.dart';

void main() {
  runApp(MaterialApp());
}

// ignore: camel_case_types
class weatherforecast extends StatefulWidget {
  const weatherforecast({Key? key}) : super(key: key);

  @override
  _weatherforecastState createState() => _weatherforecastState();
}

// ignore: camel_case_types
class _weatherforecastState extends State<weatherforecast> {
  late Future<weathermodel> forecastObject;
  late String _cityName = "Bengaluru";
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    forecastObject = Network().getweatherforecast(cityName: _cityName);
    forecastObject.then((weather) {
      print(weather.clouds);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forecast")),
    );
  }
}
