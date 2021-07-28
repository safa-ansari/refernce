import 'package:flutter/material.dart';
import 'package:weatherapp/weatherforecast/weatherforecastmodel.dart';

Widget midView(AsyncSnapshot<weathermodel> snapshot) {
  // var forecastList = snapshot.data!.sys;
  // throw Exception();

  

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
