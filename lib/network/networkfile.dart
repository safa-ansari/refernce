import 'package:C:\flutter\weatherapp\lib\weatherforecast\weatherforecastmodel.dart';
import 'package:C:\flutter\weatherapp\lib\util\forecast_util.dart';
import 'package:http/http.dart';
class Network {
  Future<weathermodel> getweatherforecast({String cityName}) async{}
  var finalUrl = "https://api.openweathermap.org/data/2.5/weather?q="+cityName
  +"&appid="+Util.appId;

  final response = await get(Uri.encodeFull(finalUrl));
}
