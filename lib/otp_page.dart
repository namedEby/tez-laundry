import 'dart:async';
import  'package:flutter/material.dart';
import 'package:tez/background3.dart';
import 'package:tez/photoupload.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';


class OtpPageApp extends StatefulWidget{
   @override
  _OtpPageAppState createState() => _OtpPageAppState();
}

class _OtpPageAppState extends State<OtpPageApp> {
  FocusNode textSecondFocusNode = new FocusNode();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 30),(){
      Timer(Duration(seconds: 30),(){
        Text("Resend OTP");
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Stack(
        children: <Widget>[
          Background3App(),
          Container(
                margin: EdgeInsets.only(left: 20,top: 150),
                child:Text("Enter OTP",
                style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Center(
              child: Container(
                child: PinEntryTextField(
                  showFieldAsBox: true,
                  onSubmit: (String pin){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Pin"),
                          content: Text('Pin entered is $pin'),
                        );
                      }
                    ); //end showDialog()
                  }, // end onSubmit
                ),
              )
              ),
              Container(
            margin: EdgeInsets.only(left:200,top: 170),
            alignment: Alignment.center,
            child: IconButton(
            icon: Image.asset('assets/arrow.png'),
            iconSize: 100,
           onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => PhotoUploadApp() ));
          },)
          ), 

        ]
      )
    );   
  }
}

