import 'package:flutter/material.dart';

class ListContent1 extends StatelessWidget{
  String img;

  ListContent1({this.img});
  @override
  Widget build(BuildContext context) {
   
    return Card(
      child:
            Center(
              child:Container( 
                height: 80,
                width: 100,
                child: Image(image: AssetImage(img)),
              ),
           ),      
    );
  }

}