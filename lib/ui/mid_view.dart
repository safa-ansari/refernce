import 'package:flutter/material.dart';
import 'package:weatherapp/weatherforecast/weatherforecastmodel.dart';

Widget midView(AsyncSnapshot<weathermodel> snapshot) {
  // var forecastList = snapshot.data!.sys;
  // throw Exception();

  var formattedDate =
      new DateTime.fromMillisecondsSinceEpoch(snapshot.data!.dt * 1000);

  Container middView = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //  Text(${snapshot.s})
      ],
    ),
  );
  return middView;
}
