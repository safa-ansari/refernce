// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:weatherapp/network/networkfile.dart';
import 'package:weatherapp/ui/mid_view.dart';
import 'package:weatherapp/weatherforecast/weatherforecastmodel.dart';

// ignore: camel_case_types
class weatherforecast extends StatefulWidget {
  const weatherforecast({Key? key}) : super(key: key);

  @override
  _weatherforecastState createState() => _weatherforecastState();
}

// ignore: camel_case_types
class _weatherforecastState extends State<weatherforecast> {
  late Future<weathermodel> forecastObject;
  late String _name = "Bengaluru";

  @override
  void initState() {
    super.initState();
    forecastObject = Network().getweatherforecast(name: _name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          textFieldView(),
          Center(
            child: Container(
                child: FutureBuilder(
              future: forecastObject,
              builder:
                  (BuildContext context, AsyncSnapshot<weathermodel> snapshot) {
                if (!snapshot.hasData)
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                return Column(
                  children: [
                    midView(snapshot),
                  ],
                );
              },
            )),
          )
        ],
      ),
    );
  }

  Widget textFieldView() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Enter City Name",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.all(6),
        ),
      ),
    );
  }
}
