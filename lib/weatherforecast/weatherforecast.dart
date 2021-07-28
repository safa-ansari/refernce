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

  // init() async {
  //   Network n = Network();
  //   await n.getweatherforecast(name: _name);
  // }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    forecastObject = Network().getweatherforecast(name: _name);
    // forecastObject.then((weather) {});
    // init();
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
                if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      midView(snapshot),
                    ],
                  );
                } else {
                  return Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
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
