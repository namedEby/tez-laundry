import 'package:flutter/material.dart';



class Background3App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height:double.infinity,
      width: double.infinity,
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(
              'assets/Tezbg3.png'),
              //color: Color(0xffd41BAFF).withOpacity(0.46), 
      
              fit: BoxFit.fill,
        ),
        
      ),
    );
  }

} 