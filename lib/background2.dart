import 'package:flutter/material.dart';



class Background2App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height:150.0,
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(
              'assets/Tezbg2.png'),
              //color: Color(0xffd41BAFF).withOpacity(0.46),
          fit: BoxFit.fill,
        ),
        
      ),
    );
  }

} 