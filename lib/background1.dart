import 'package:flutter/material.dart';



class Background1App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height:double.infinity,
      width: double.infinity,               
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(
              'assets/Tezbg_1.png'),
              //color: Color(0xffd41BAFF).withOpacity(0.46), 
          fit: BoxFit.fill,
        ),
        
      ),
    
    );
  }

} 