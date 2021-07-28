import 'dart:convert';
import "package:weatherapp/weatherforecast/weatherforecastmodel.dart";
import 'package:http/http.dart' as http;
import 'package:weatherapp/util/forecast_util.dart';

class Network {
  // Future<weathermodel>
  getweatherforecast({
    required String name,
  }) async {
    var uri = "https://api.openweathermap.org/data/2.5/weather?q=" +
        name +
        "&appid=" +
        Util.appId;

    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=Bengaluru&appid=9c0099bc3550b6697606e4e441e2bce2"));

    // print(Uri.encodeFull(uri));
    print(response.body);
    if (response.statusCode == 200) {
      return weathermodel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error getting forecast");
    }
  }
}
