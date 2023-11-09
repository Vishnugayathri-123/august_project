import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MeterialApp(
        useInheriteMediaQuary:true,
            home: sample(),
          )));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Text(
        "welcome to flutter",
        style: TextStyle(fontSize: 30, color: Colors.redAccent),
      ),
    );
  }
}
