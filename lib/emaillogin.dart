import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/photoupload.dart';
import 'package:email_validator/email_validator.dart';


class EmailLoginApp extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
        Background2App(),
       Padding(
          padding: const EdgeInsets.all(46.0),
          child: Form(
            key: _formKey,
              child: Column(
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
                      SizedBox(height: 30.0),
                      Container(
                       alignment: Alignment.centerLeft,
                       padding: EdgeInsets.only(left: 10),
                        child: Text("Enter Your Email",
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                        ),
                      SizedBox(height: 10,),                    
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      autofocus: true,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20.0
                      ),
                      decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: "Enter Your Email .......",
                      border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (!EmailValidator.validate(value)) {
                        return 'Please enter a valid email';
                        }
                      },
                      ),
                      SizedBox(
                        height: 25
                      ),
                      Container(
                       alignment: Alignment.centerLeft,
                       padding: EdgeInsets.only(left: 10),
                        child: Text("Enter Your Password",
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                        ),
                        SizedBox(height: 10,), 
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20.0
                        ),
                        decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        labelText: "Enter Your Password",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Forgot Password",
                        style: TextStyle(
                          fontSize: 20,
                          color:Colors.blueAccent,
                        ))
                      ),
                      SizedBox(height:10),
                     FlatButton(
                        child: Image.asset('assets/arrow.png',height: 90,),
                        onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotoUploadApp()));
                }
              },
                      ),    
              ],
            ),
          ), 
        ) ,
     
      ],)
      ),
      
    );
  }

}