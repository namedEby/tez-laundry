import 'package:flutter/material.dart';

class EgHomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color(0xffd41BAFF),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null
          ),
          Text("Tez Laundry",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Lato'
            )
          ),
          

        ],

      ),
    ); 
  }
}