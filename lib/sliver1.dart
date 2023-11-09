import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Sliverss(),debugShowCheckedModeBanner: false,));
}

class Sliverss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            flexibleSpace: Container(color: Colors.red,),
            expandedHeight: 150,
            title: Text("Sliver Example"),
            // flexibleSpace: Container(child: Text("svf"),),
            actions: [
              IconButton(onPressed: () {

              },icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white
                  ,),

                child: TextField(
                  decoration: InputDecoration(hintText:"Search Something"
                      ,suffixIcon: Icon(Icons.search)),

                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Gayathri"),
                subtitle:Text("678678"),
              ),
            ],
          ),
          ),
        ],
      ),


    );
  }

}