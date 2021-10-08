import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import './background2.dart';
import 'eghome.dart';
import 'dart:async';
import 'dart:io';


class PhotoUploadApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {  
    
    return PhotoUploadAppState();
  }

}

class PhotoUploadAppState extends State<PhotoUploadApp>{
  File _image;
  Future getImageFromCam() async {
    var image = await ImagePicker.pickImage(source:ImageSource.camera);
    setState(() {
      
      _image= image;
    });
  }
   Future getImageFromGal() async {
    var image = await ImagePicker.pickImage(source:ImageSource.gallery);
    setState(() {
      
      _image= image;
    });
  }
  
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:Stack(
         children: <Widget>[
           Background2App(),
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Upload Photo',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Lato',
                  
                )),
                SizedBox(
                  height: 10,
                ), 
                Text('Let Us Know How You Look',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                  
                )),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: 150,
                    height: 150,
                child:_image == null?Container(
                    width: 60,
                    height: 60,
                child:Image(image:AssetImage('assets/Ellipse 118.png')),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1)),
                  )
                : ClipOval(
                  child: Image.file(_image),
                  ),  
                  ),
                  SizedBox(
                    height:30
                  ),

                Container(
                
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                       iconSize: 50,
                       icon: Image.asset('assets/photo-camera.png'),
                       onPressed: getImageFromCam),
                       SizedBox(
                         width: 20
                       ),
                       IconButton(
                         iconSize: 50,
                         icon:Image.asset('assets/photo.png'),
                        onPressed: getImageFromGal)
                   ]
                )
                ),
                
              ]
           ),
           Container(
             alignment: Alignment.bottomRight,
           child: FlatButton(
                      child: Image.asset('assets/arrow.png',height: 90,),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>  EgHomeApp() ));
                      }
                    ),
           )
           
         ]
        
      )
    );
  }

}