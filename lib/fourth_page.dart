import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/phonelogin.dart';

class FourthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background2App(),
          FlatButton( 
          child: Container(
            margin: EdgeInsets.only(top:50, left:280),
            child: Text("Skip",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Lato',
              color: Colors.black,
            )),
          ),onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => PhoneLoginApp() ));
          },),
          Container(
            margin: EdgeInsets.only(top:150.0,),
            alignment: Alignment.center,  
            height: 200.0,
            decoration: BoxDecoration(
            image:DecorationImage(
            image:AssetImage('assets/fourthpage.png'),
              ) 
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 200.0,left: 20),
            alignment: Alignment.center,
            child: Text("Your Washed Clothes At Your Door",
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Lato',
              fontWeight: FontWeight.normal,
              )
            )
          ),  
          Container(
          margin: EdgeInsets.only(
            top: 300.0,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/line.png'))),
        ), 
        Container(
          margin: EdgeInsets.only(top: 390.0, left: 19.0),
          alignment: Alignment.center,
          child: Text("lorem ipsum qwerty lorem ipsum ",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal,
            fontFamily: 'Lato',
          )
        ) 
        ),
        ]
      ),
    );
  }

}