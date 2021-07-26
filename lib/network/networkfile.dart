import 'package:flutter/material.dart';
import 'dart:convert';
import "package:weatherapp\lib\weatherforecast\weatherforecastmodel.dart";
import 'package:http/http.dart';
import 'package:weatherapp/util/forecast_util.dart';

class Network {
  Future<weathermodel> getweatherforecast({String cityName}) async {
    var finalUrl = "https://api.openweathermap.org/data/2.5/weather?q=" +
        cityName +
        "&appid=" +
        Util.appId;

    final response = await get(Uri.encodeFull(finalUrl));
    print("URL: ${Uri.encodeFull(finalUrl)}");
    if (response.statusCode == 200) {
      return weathermodel.fromjsonDecode(response.body);
    } else {
      throw Exception("Error getting forecast");
    }
  }
}
