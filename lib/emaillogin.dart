import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/photoupload.dart';



class EmailLoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Stack(children: <Widget>[
        Background2App(),
       Padding(
          padding: const EdgeInsets.all(46.0),
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
                    
                    TextField(
                    obscureText: false,
                    autofocus: true,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20.0
                    ),
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Enter Your Email .......",
                    border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
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
                    TextField(
                      obscureText: true,
                      style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0
                      ),
                      decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Enter Your Password",
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Forgot Password",
                      style: TextStyle(
                        fontSize: 17,
                        color:Colors.blueAccent,
                      ))
                    ),
                    SizedBox(height:10),
                   FlatButton(
                      child: Image.asset('assets/arrow.png',height: 90,),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PhotoUploadApp() ));
                      }
                    ),
                     

                    
                    
            ],
          ), 
        ) ,
     
      ],)
    );
  }

}