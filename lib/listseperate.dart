import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listseperated(),));
}
class Listseperated extends StatelessWidget {
  var name = ["anu", "manu", "ram", "a", "b", "c"];
  var image = [
    "2/image1.png",
    "2/image1.png",
    "2/image1.png",
    "2/image1.png",
    "2/image1.png",
    "2/image1.png"
  ];

  var phone = ["5454", "6465", "4656", "545", "5454", "454554"];
  var colrs = [
    Colors.blue,
    Colors.greenAccent,
    Colors.green,
    Colors.yellow,
    Colors.lime,
    Colors.pinkAccent
  ];

  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return Card(color: colrs[index],

          child: ListTile(
            leading: Image(image: AssetImage(image[index]),),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.access_alarm),
          ),
        );
      }, separatorBuilder: (context, index) {
        return Divider(
          thickness: 5,
          color: Colors.deepOrangeAccent,
        );
      }, itemCount: image.length),
    );
  }
}
