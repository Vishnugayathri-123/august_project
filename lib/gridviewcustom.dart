import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcustm(),));
}

class Gridviewcustm extends StatelessWidget{
  var image=["2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png","2/image1.png",];
  var name=["anu","balu","anu","balu","anu","balu","anu","balu","anu","balu","anu","balu",];
  var rate=["2","3","4","5","2","5","4","3","2","balu","anu","balu",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       childrenDelegate: SliverChildBuilderDelegate((context,index) {
         return Container(color: Colors.yellow[50],
           child: Column(
            children: [
              Image(image: AssetImage(image[index]),fit: BoxFit.fill,),
              SizedBox(height: 20,),
              Row(
                children:[
              SizedBox(width: 100,),
              Text(name[index]),
              SizedBox(width: 5,),
              Text(rate[index]),
            ],
           ),
         ],
          ),
         );
    },childCount: image.length
    )),
      );

  }

}