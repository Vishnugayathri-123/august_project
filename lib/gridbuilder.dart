import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridbuilder(),));
}

class Gridbuilder extends StatelessWidget{
  var image=["2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png",];
  var name=["anu","balu","anu","balu","anu","balu","anu","balu","anu","balu","anu","balu",];
  var rate=["2","3","4","5","2","5","4","3","2","balu","anu","balu",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(image[index]),),
              Row(
                children: [
                  Text(name[index]),
                  SizedBox(width: 100,),
                  Text(rate[index])
                ],
              )
            ],
          ),
        );
      },),
    );

  }

}