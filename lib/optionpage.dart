import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/welcomepage.dart';

import 'emailsignup.dart';

class OptionPageApp extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget> [
        Background2App(),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 20),
              InkWell(
                child: Text("Sign Up Using Phone",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => WelcomePageApp()
                  ));
                }
              ),
              SizedBox(height: 70),
              InkWell(
                child: Text("Sign Up Using Email",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => EmailSignUp(),
                  ));
                }
              ),
            ]
          ),
        )
      ])
    );
  }

}

