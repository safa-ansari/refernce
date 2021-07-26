import 'dart:convert';
import "package:weatherapp/weatherforecast/weatherforecastmodel.dart";
import 'package:http/http.dart' as http;
import 'package:weatherapp/util/forecast_util.dart';

class Network {
  Future<weathermodel> getweatherforecast({
    required String cityName,
  }) async {
    var uri = "https://api.openweathermap.org/data/2.5/weather?q=" +
        cityName +
        "&appid=" +
        Util.appId;

    final response = await http.get(Uri.parse(Uri.encodeFull(uri)));

    print(Uri.encodeFull(uri));
    if (response.statusCode == 200) {
      return weathermodel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error getting forecast");
    }
  }
}
