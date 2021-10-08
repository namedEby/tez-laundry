import 'package:flutter/material.dart';

class ListContent extends StatelessWidget{
  String img;

  ListContent({this.img});
  @override
  Widget build(BuildContext context) {
   
    return Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35.0),
    ),
    elevation: 3,
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