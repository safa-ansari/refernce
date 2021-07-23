import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class weathermodel extends StatefulWidget {
  const weathermodel({Key? key}) : super(key: key);

  @override
  _weathermodelState createState() => _weathermodelState();
}

class _weathermodelState extends State<weathermodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forecast")),
    );
  }
}
