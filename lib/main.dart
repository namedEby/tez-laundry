import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tez/background1.dart';
import 'package:tez/second_page.dart';
//import 'rate.dart';
import 'mycart.dart';


void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyCartPage(),
    )
  );
} 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>{

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => SecondPageApp(),
      )
      );
    },);
  }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: <Widget>[
          Background1App(),
          
         Container(
            margin: EdgeInsets.only(top: 200.0,),
            alignment: Alignment.center,  
            height: 200.0,
            decoration: BoxDecoration(
            image:DecorationImage(
            image:AssetImage('assets/logotruck.png')
            ) 
          ),
        )
      ]
    ),
  );  
  }
}

          
     
     
    
    
      
      
    
      
    