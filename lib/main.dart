import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tez/background1.dart';
import 'package:tez/second_page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyApp() ,
    )
  );
} 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>{
  Image img1;
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
     SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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

          
     
     
    
    
      
      
    
      
    