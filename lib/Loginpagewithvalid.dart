


import 'package:august_project/main.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginpage_Withvalid()
      )));
}
class Loginpage_Withvalid extends StatefulWidget {
  @override
  State<Loginpage_Withvalid> createState() =>_LoginpagevalidState();

}
class _LoginpagevalidState extends State<Loginpage_Withvalid>{
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loginpage_Withvalid"),),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("LOGIN PAGE",style: TextStyle(fontSize: 40,color: Colors.red),),

              Padding(
                padding: const EdgeInsets.only(top: 20,right: 40),
                child: TextFormField(
                  decoration:InputDecoration(
                    labelText: "username" ,
                    hintText: "username" ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  ),
                  validator: (uname){
                    if(uname!.isEmpty || !uname.contains('@')||!uname.contains('.')){
                      return"please enter valid usernsme";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      if (showpass) {
                        var showpass = false;
                      }
                      else {
                        showpass = true;
                      }
                    });
                  },
                  icon: Icon(
                    showpass == true ? Icons.visibility_off : Icons.visibility),

                  ),
                  labelText: "password",
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80);
                  )
                  ),
                  validator:(password) {}),
          ElevatedButton(onPressed: () {
            final valid=formkey.currentState!.validdate();
            if(valid){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));
    }
            else {
              return null;
            }
    },
              child: Text("Login")
          ),
    TextButton(onPressed: () {}, child:Text("create a new user"),


              )
            ],
          ),
        ),
       ),
    );
  }

}

class Homepage {
}

class MeterialPageRoute {
}