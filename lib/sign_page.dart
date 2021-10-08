import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/photoupload.dart';

class SignPageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background2App(),
           Container(
            margin: EdgeInsets.only(top: 130.0,left: 110.0),
            alignment: Alignment.center,  
            width: 140.0,
            height: 140.0,
            decoration: BoxDecoration(
            image:DecorationImage(
            image:AssetImage('assets/logotruck.png',)
            ) 
          ),
        ),
         Container(
            margin: EdgeInsets.only(top: 250.0, left: 160.0),
            child: Text("Tez",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                )
              )
            ),
            Container(
            margin: EdgeInsets.only(top: 320.0, left: 30.0),
            //alignment: Alignment.center,
            child: Text("Enter Your Email",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                )
              )
            ),
            Container(
              width: 330.0,
                margin: EdgeInsets.only(top: 360.0,left: 20.0),
                child: TextField(
                  decoration: new InputDecoration( hintText: "Enter Your Email",
                    border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(25.0),),
                      ),
                      
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.white),
                ),
              ),
               Container(
            margin: EdgeInsets.only(top: 430.0, left: 30.0),
            //alignment: Alignment.center,
            child: Text("Enter Your Password",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                )
              )
            ),
            Container(
              width: 330.0,
                margin: EdgeInsets.only(top: 470.0,left: 20.0),
                child: TextField(
                  decoration: new InputDecoration( hintText: "Enter Your Password",
                    border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(25.0),),
                      ),
                      
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.white),
                ),
              ),
              Container(
            margin: EdgeInsets.only(top: 480.0,left: 250.0),
            alignment: Alignment.center,  
            height: 200.0,
            child: new IconButton(
                         
                      icon: new Image.asset('assets/arrow.png',height: 450.0,width: 150.0,),
                      
                      onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>PhotoUploadApp())
                                  );
                },
                       ),),


        ],
      ),
      
    );
  }

}