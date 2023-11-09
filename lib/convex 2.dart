import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Sliversss(),
          )));
}
class hotel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold( body: CustomScrollView(
    slivers: [
      SliverAppBar()
    ],
  ),

  );
  }

}