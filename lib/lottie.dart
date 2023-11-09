import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottiee(),));
}
class Lottiee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(children: [
      Lottie.asset("animation/Animation - 1697786652727.json"),
      Lottie.network("https://lottie.host/22fcb5ed-3910-4e14-b4f8-b493c22e5314/JbO0OkdhNn.json"),
    ],),
  );
  }

}