import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homepage(),));
}

  class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => Homestate();
  }

  class Homestate extends State<Homepage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Recents"),),
        body: ListView(
          children: [
            Card(color: Colors.lime,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("2/image1.png"),),
              title: Text("anu"),
              subtitle: Text("9123456789"),
              trailing: Icon(Icons.call),
            ),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("2/image1.png"),),
              title: Text("anu"),
              subtitle: Text("9123456789"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("2/image1.png"),),
              title: Text("anu"),
              subtitle: Text("9123456789"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("2/image1.png"),),
              title: Text("anu"),
              subtitle: Text("9123456789"),
              trailing: Icon(Icons.call),
            ),


          ],
        ),
      );
    }
  }
