import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drawereg(),));

}
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("drawereg"),),
    drawer: Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/iconss/new.jpg"),fit: BoxFit.fill)),

            accountName: Text("Gayathri n v"),
            accountEmail: Text("gayathri@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("2/image1.png"),),
            otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("asset/Iconss/person.jpg"),),
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
          ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text("Service"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("about"),
          ),
          Divider(thickness: 1,color: Colors.red,),
          ListTile(
            leading: Icon(Icons.search),
            title: Text("search"),
          ),
        ],
      ),
    ),
  );
  }

}