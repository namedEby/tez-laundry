import 'package:flutter/material.dart';



class Background4App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height:220,
      width: double.infinity,
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(
              'assets/tezbg.png'),
              //color: Color(0xffd41BAFF).withOpacity(0.46), 
          fit: BoxFit.fill,
        ),
        
      ),
    );
  }

} 