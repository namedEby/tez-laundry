import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:tez/background2.dart';
import './emaillogin.dart';
import './otp_page.dart';
import './optionpage.dart';

class PhoneLoginApp extends StatefulWidget {
  @override
  _PhoneLoginAppState createState() => _PhoneLoginAppState();
}

class _PhoneLoginAppState extends State<PhoneLoginApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children:<Widget>[
          Background2App(),

            Center(
             child:Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
              Container(
            alignment: Alignment.center,  
            width: 150.0,
            height: 200.0,
            decoration: BoxDecoration(
            image:DecorationImage(
            image:AssetImage('assets/logotruck.png',)
            ) 
          ),
          child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 130),
            child: Text("Login",
            style: TextStyle(
              fontSize: 35.0
            ),))
        ),
        ),
            SizedBox(height: 40),
             Container(
                  margin: EdgeInsets.only(left:20),
                  width: 300,
                  height: 60,
                  decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20),
                  border: new Border.all(
                  color: Colors.black,
                ),
              ),
              child:Row( 
                mainAxisSize: MainAxisSize.min,
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Number',
                        ),
                      ),
                    ),  
                ]
              ),
             ),
            
             SizedBox(
                      height: 25
                    ),
                    FlatButton(
                      child: Image.asset('assets/arrow.png',height: 90,),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OtpPageApp() ));
                      }
                    ),
                    FlatButton(
                       child: Center(
                      child:Text("Login Using Email",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lato',
                      ))
                    ),
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) => EmailLoginApp() ));
                     },),
                     SizedBox(height: 20,),
                     FlatButton(
                       child: Center(
                      child:Text("Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lato',
                      ))
                    ),
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) => OptionPageApp() ));
                     },) 
      
       
      ]
            ),
            )
        ]
      )
          
    );
    void _onCountryChange(CountryCode countryCode) {
    //Todo : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }
    
  }
 

}


 