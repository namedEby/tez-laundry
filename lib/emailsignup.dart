import 'package:flutter/material.dart';
import 'package:tez/background2.dart';
import 'package:tez/photoupload.dart';
import 'package:validators/validators.dart' as validator;
import 'model.dart';
  

class EmailSignUp extends StatefulWidget {
  @override
  _EmailSignUpState createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  
  @override
  Widget build(BuildContext context) {
        final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        
        body: SingleChildScrollView(
                  child: Form(
      key: _formKey,
      child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Background2App(),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.9,bottom: 20),
                    child: Container(
              alignment: Alignment.topCenter,  
              width: 150.0,
              height: 200.0,
              decoration: BoxDecoration(
              image:DecorationImage(
              image:AssetImage('assets/logotruck.png',)
              ) 
            ),
            child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 120),
              child: Text("Login",
              style: TextStyle(
                fontSize: 35.0
              ),))
          ),
          ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      Container(
                        alignment: Alignment.center,
                        width: halfMediaWidth,
                        child: MyTextFormField(
                          hintText: 'First Name',
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Enter your first name';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            model.firstName = value;
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: halfMediaWidth,
                        child: MyTextFormField(
                          hintText: 'Last Name',
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Enter your last name';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            model.lastName = value;
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            MyTextFormField(
              hintText: 'Email',
              isEmail: true,
              validator: (String value) {
                if (!validator.isEmail(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              onSaved: (String value) {
                model.email = value;
              },
            ),
            MyTextFormField(
                          hintText: 'Phone Number',
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Enter your Phone Number';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            model.phonenumber = value;
                          },
                        ),
            
            MyTextFormField(
              hintText: 'Password',
              isPassword: true,
              validator: (String value) {
                if (value.length < 7) {
                  return 'Password should be minimum 7 characters';
                }

                _formKey.currentState.save();

                return null;
              },
              onSaved: (String value) {
                model.password = value;
              },
            ),
            MyTextFormField(
              hintText: 'Confirm Password',
              isPassword: true,
              validator: (String value) {
                if (value.length < 7) {
                  return 'Password should be minimum 7 characters';
                } else if (model.password != null && value != model.password) {
                  print(value);
                  print(model.password);
                  return 'Password not matched';
                }

                return null;
              },
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotoUploadApp()));
                }
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
      ),
    ),
        )
      );
  }
}
  
class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}

