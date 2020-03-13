import  'package:flutter/material.dart';
import 'package:tez/background3.dart';

import 'eghome.dart';
//import 'package:tez/homepage.dart';


class PhoneNoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background3App(),
        Container(
       margin: EdgeInsets.only(left: 25.0,top: 195.0), 
      child: Text("Login",
      style: TextStyle(
        fontSize: 50.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
      ),
      ),),
     

       
      Container(
        margin: EdgeInsets.only(left: 25.0,top: 260.0), 
        child: Text("Login to get access to the app",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.normal,
        ),)
        ),
        Container(
                margin: EdgeInsets.only(top: 350.0),
                child: TextField(
                  decoration: new InputDecoration( hintText: "+91 Enter Your Number.....",
                    border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),),
                      ),
                      
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.white),
                ),
              ),
               Container(
            margin: EdgeInsets.only(top: 370.0,left: 260.0),
            alignment: Alignment.center,  
            height: 200.0,
            child: new IconButton(
                         
                      icon: new Image.asset('assets/arrow.png',height: 450.0,width: 150.0,),
                      
                      onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EgHomeApp())
                                  );
                },
                       ),),
        

        ]
      )
      




      );
    
  }
} 
  
