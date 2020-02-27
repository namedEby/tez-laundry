import 'package:flutter/material.dart';

class ListContent extends StatelessWidget{
  String img;

  ListContent({this.img});
  @override
  Widget build(BuildContext context) {
   
    return Card(
      child:
            Center(
              child:Container( 
                height: 70,
                width: 70,
                child: Image(image: AssetImage(img)),
              ),
           ),      
    );
  }

}