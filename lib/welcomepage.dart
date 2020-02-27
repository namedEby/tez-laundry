import  'package:flutter/material.dart';
import 'package:tez/background3.dart';
import 'package:tez/otp_page.dart';
//import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';



class WelcomePageApp extends StatefulWidget {
  @override
  _WelcomePageAppState createState() => _WelcomePageAppState();
}

class _WelcomePageAppState extends State<WelcomePageApp> {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
            body: Stack(
              children: <Widget>[
                Background3App(),
                Container(
                  margin: EdgeInsets.only(left: 20,top: 150),
                  child:Text("Welcome",
                      style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ), 
                Container(
                  margin: EdgeInsets.only(left: 20,top: 210),
                  child:Text("sign up to get access to the app",
                  style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:20),
                  width: 300,
                  height: 60,
                  decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(30),
                  border: new Border.all(
                  color: Colors.black,
                ),
              ),
              child:Row( 
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  CountryCodePicker(
         onChanged: print,
         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
         initialSelection: 'IN',
         //favorite: ['+39','FR'],
         // optional. Shows only country name and flag
         showCountryOnly: false,
         // optional. Shows only country name and flag when popup is closed.
         showOnlyCountryWhenClosed: false,
         // optional. aligns the flag and the Text left
         alignLeft: false,
       ),
                    Container(
                      width: 200.0,
                      child: TextField(
                        //autofocus: true,   
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Number',
                        ),
                      ),
                    ),    
                  ]
                  ),
                ),
                    ]
                  ),
                Container(
            margin: EdgeInsets.only(left:200,top: 170),
            alignment: Alignment.center,
            child: IconButton(
            icon: Image.asset('assets/arrow.png'),
            iconSize: 100,
           onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => OtpPageApp() ));
          },)
          ), 
              ]
            ),
                );
    
  }

   void _onCountryChange(CountryCode countryCode) {
    //Todo : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
   
} 

  
}
  
