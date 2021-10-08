import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'about.dart';
import 'account.dart';
import 'contact.dart';
import 'mycart.dart';
import 'notificationpage.dart';
import 'order.dart';
import 'phonelogin.dart';
import 'services.dart';

class SettingsPage extends StatelessWidget{
   final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, 
      resizeToAvoidBottomPadding: false,
      drawer:   
              SizedBox(
            width: 270,
            child:  new Drawer(  
            child:ListView(
              children: <Widget>[
                Container(
                  color: Color(0xffE4F7FA),
                  child:
                new ListTile(
                  leading: Icon(Icons.phone_android,color: Colors.lightBlueAccent,),
                  title: new Text('5648697987',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),  
                ),
                ),
                  new UserAccountsDrawerHeader(
                  accountName: new Text('Username'),
                  accountEmail: new Text('username@test.com'),
                  currentAccountPicture: new CircleAvatar(
                    backgroundImage: new AssetImage('assets/man.png'),
                    backgroundColor: Colors.red,
                  ),
                ),
                
                new ListTile(
                  leading: Icon(FontAwesome5.user_circle,color: Colors.lightBlueAccent,),
                  title: new Text('Account',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AccountApp()));
                  },
                ),
                new ListTile(
                 leading: Icon(FontAwesome5.address_book,color: Colors.lightBlueAccent,),
                  title: new Text('Services',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new ServicesApp()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.restore,color: Colors.lightBlueAccent,),
                  title: new Text('Order History',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new OrderApp()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.credit_card,color: Colors.lightBlueAccent,),
                  title: new Text('Credits',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new OrderApp()));
                  },
                ),
                new ListTile(
                 leading: Icon(Icons.shopping_basket,color: Colors.lightBlueAccent,),
                  title: new Text('Track Your Order',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new MyCartPage()));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/g.png',color: Colors.lightBlueAccent),
                  title: new Text('About Us',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.settings,color: Colors.lightBlueAccent),
                  title: new Text('Settings',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new SettingsPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.phone,color: Colors.lightBlueAccent,),
                  title: new Text('Contact Us',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new ContactApp()));
                  },
                ),
                Divider(
                  color: Color(0xff41BAFF),
                  height: 10,
                  ),
                  new ListTile(
                    title: new Text('Others',style:TextStyle(fontSize: 15.0,fontFamily: 'Lato')),
                  ),
                  new ListTile(
                  leading: Icon(Icons.star_border,color: Colors.lightBlueAccent,),
                  title: new Text('Rate',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.share,color: Colors.lightBlueAccent),
                  title: new Text('Share',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage() ));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/logout.png',color: Colors.lightBlueAccent,width: 20.0,),
                  title: new Text('Logout',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new PhoneLoginApp()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Column(
        children: <Widget>[
          Container(
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                SizedBox(width: 30),
              new InkWell(
              child: Icon(Icons.menu),
              onTap: (){
                _scaffoldKey.currentState.openDrawer();
              },),
              SizedBox(width: 80),
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top:80),
              child:Text("Settings",
              style: TextStyle(
                fontSize:20,
                fontFamily: 'Lato'
              )),
            ),
            SizedBox(width: 80),
              new IconButton(
              icon: Image.asset('assets/notification.png'),
              iconSize: 20,
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> NotificationPageApp()));  
              },),
              ]),
            ]
            ),),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(
                height: 100,
                child: Card(
                  child:Column(children: <Widget>[
                    SizedBox(height: 20),
                    Row(children: <Widget>[
                      SizedBox(width: 20),
                      Text("John Smith",
                      style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato'
                    )),
                    SizedBox(width: 180),
                    Text("EDIT",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold
                    )),
                    ]),
                    //SizedBox(width: 50),
                    Row(children: <Widget>[
                      SizedBox(width: 20),
                      Text("6457864578",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                    )),
                    ],),
                    Row(children: <Widget>[
                      SizedBox(width: 20),
                      Text("smithjohn@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                    )),
                    ],)
                  ])
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 130,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Column(children: <Widget>[
                        SizedBox(height: 20),
                        Row(children: <Widget>[
                          SizedBox(width: 20,),
                          Text("LOCATION",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                          )),
                          SizedBox(width: 100),
                          Text("ADD",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold
                          )),
                          SizedBox(width: 45),
                          Text("EDIT",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold
                          )),
                        ],),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                          SizedBox(width: 20),
                          Text("Lorem ipsum dolor sit amet,",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          )),
                        ],),
                        Row(children: <Widget>[
                          SizedBox(width: 20),
                          Text("consetetur sadipscing elitr, sed",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          )),
                        ],),
                        Row(children: <Widget>[
                          SizedBox(width: 20),
                          Text("diam nonumy eirmod tempor",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          )),
                        ],)
                      ],)
                    ]
                  ),
                ),
              ),
              Container(
                height: 90,
                child: Card(
                  child: Column(children: <Widget>[
                    SizedBox(height: 20),
                    Row(children: <Widget>[
                      SizedBox(width: 20,),
                      Text("HELP",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lato'
                      ),),
                    ]),
                    //SizedBox(height: 10),
                    Row(children: <Widget>[
                      SizedBox(width: 20,),
                      Text("FAQs/LINKS",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lato'
                      ),),
                    ])
                  ]),
                ),
              ),
               Container(
                height: 60,
                child: Card(
                  child: Column(children: <Widget>[
                    SizedBox(height: 20),
                    Row(children: <Widget>[
                      SizedBox(width: 20,),
                      InkWell(
                          child: Text("LOGOUT",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PhoneLoginApp()
                          ));
                        },
                      ),
                    ]),
                    
                  ]),
                ),
              ),
            ])

            ])
          ]
        ),
    );
  }

}