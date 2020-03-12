import 'dart:async';
import  'package:flutter/material.dart';
//import 'package:flutter/services.dart';
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

/* Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                       Container(
                          width: 65.0,
                          height: 110.0, 
                          margin: EdgeInsets.only(left: 20.0),   
                          child: new TextField(
                          keyboardType: TextInputType.number,
                          autofocus: true,
                           inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          ),
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                          hintText: '0',
                          border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                          ),
                          borderSide: new BorderSide(
                          color: Colors.black,
                          width: 0.100,
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                          width: 65.0,
                          height: 110.0, 
                          //margin: EdgeInsets.only(left: 20.0,top: 300.0),   
                          child: new TextField(
                            keyboardType: TextInputType.number,
                           inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                            textInputAction: TextInputAction.done,
                          style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          ),
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                          hintText: '0',
                          border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                          ),
                          borderSide: new BorderSide(
                          color: Colors.black,
                          width: 0.100,
                        ),
                      ),
                    ),
                  )
                ),
                 SizedBox(
                  width: 20,
                ),
                Container(
                          width: 65.0,
                          height: 110.0, 
                          //margin: EdgeInsets.only(left: 20.0,top: 300.0),   
                          child: new TextField(
                            keyboardType: TextInputType.number,
                           inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          ),
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                          hintText: '0',
                          border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                          ),
                          borderSide: new BorderSide(
                          color: Colors.black,
                          width: 0.100,
                        ),
                      ),
                    ),
                  )
                ), SizedBox(
                  width: 20,
                ),
                Container(
                          width: 65.0,
                          height: 110.0, 
                          //margin: EdgeInsets.only(left: 20.0,top: 300.0),   
                          child: new TextField(
                           keyboardType: TextInputType.number,
                           inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ], 
                          style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          ),
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                          hintText: '0',
                          border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                          ),
                          borderSide: new BorderSide(
                          color: Colors.black,
                          width: 0.100,
                        ),
                      ),
                    ),
                  )
                ),
                    ]
                    ),
                ]
              ),*/