import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tez/phonelogin.dart';
import 'package:tez/services.dart';
import 'package:tez/settings.dart';
import 'about.dart';
import 'account.dart';
import 'cart.dart';
import 'contact.dart';
import 'notificationpage.dart';
import 'order.dart';
import 'listcontent.dart';
import 'bottomsheet.dart';
import 'package:translator/translator.dart';


class EgHomeApp extends StatefulWidget{
  @override
  _EgHomeAppState createState() => _EgHomeAppState();
}

class _EgHomeAppState extends State<EgHomeApp> {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      drawer: SizedBox(
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
                      builder: (BuildContext context) => AccountApp()));
                  },
                ),
                new ListTile(
                 leading: Icon(FontAwesome5.address_book,color: Colors.lightBlueAccent,),
                  title: new Text('Services',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => ServicesApp()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.restore,color: Colors.lightBlueAccent,),
                  title: new Text('Order History',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => OrderApp()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.credit_card,color: Colors.lightBlueAccent,),
                  title: new Text('Credits',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage()));
                  },
                ),
                new ListTile(
                 leading: Icon(Icons.shopping_basket,color: Colors.lightBlueAccent,),
                  title: new Text('Track Your Order',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => CartApp()));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/g.png',color: Colors.lightBlueAccent),
                  title: new Text('About Us',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => null));
                  },
                ),
                 new ListTile(
                  leading: Icon(Icons.settings,color: Colors.lightBlueAccent),
                  title: new Text('Settings',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => SettingsPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.phone,color: Colors.lightBlueAccent,),
                  title: new Text('Contact Us',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => ContactApp()));
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
                      builder: (BuildContext context) => AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.share,color: Colors.lightBlueAccent),
                  title: new Text('Share',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage() ));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/logout.png',color: Colors.lightBlueAccent,width: 20.0,),
                  title: new Text('Logout',style: TextStyle(fontSize: 17.0,fontFamily: 'Lato'),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => PhoneLoginApp()));
                  },
                ),
              ],
            ),
          ),
        ),
      appBar:  AppBar(
          title: Text("Tez Laundry",style: TextStyle(fontSize: 20, fontFamily: 'Lato'),),
          backgroundColor: Color(0xffd41BAFF),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications,color: Colors.white,),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPageApp(),
                ));
              },
            ),
            IconButton(
              icon: Icon(Icons.language,color: Colors.white,),
              onPressed: null,
            ),
            
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[ 
                  Align(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 1,
                      color: Color(0xffd41BAFF),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //SizedBox(width: 25),
                          ListContent(img: 'assets/t-shirt.png'),
                          //SizedBox(width: 25),
                          ListContent(img: 'assets/dress.png'),
                          //SizedBox(width: 25),
                          ListContent(img: 'assets/jeans.png'),
                        ]
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //SizedBox(width: 60),
                          Text("T-Shirt",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                          //SizedBox(width: 55),
                          Text("Dress",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                          //SizedBox(width: 65),
                          Text("Pants",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                        ]
                      ),
                        ]
                      )
                  ),
                  ),
                 ExpandableList()
                
          
                ]
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Image.asset('assets/ads.jpg')
            )
        ]
      ),
    );   
  }
}


class ExpandableList extends StatefulWidget {
  

  
  bool isExpanded = false;

  @override
  _ExpandableListState createState() => new _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList>
    with TickerProviderStateMixin<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: new ConstrainedBox(
              constraints: widget.isExpanded
                  ? new BoxConstraints()
                  : new BoxConstraints(maxHeight: 220.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child:SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                         
                           Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                           Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          )
                        ]
                      ),
                      SizedBox(height:10),
                       Divider(
                           thickness: 1,
                         ),
                      SizedBox(height:10),
                       
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                           Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                           Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          )
                        ]
                      ),
                     SizedBox(height:10),
                       Divider(
                           thickness: 1,
                         ),
                      SizedBox(height:10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                         VerticalDivider(width: 15,color: Colors.black,),
                                    Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          ),
                           Column(
                                  children: <Widget>[
                                    InkWell(
                                        child: Image.asset('assets/washing.png',width: 100,height: 50),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => HomeViewApp()));
                                        },),
                                    InkWell(
                                  child: Text('Others',
                                  style: TextStyle(
                                  fontFamily: 'Lato'
                               ),),
                               onTap:() {
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> null,
                                 ));
                               }   
                             ),
                                  ]
                          )
                        ]
                      )
                    ],),
                                      ),
                  )
                ),
              ),
              )),
      widget.isExpanded
          ? new ConstrainedBox(constraints: new BoxConstraints())
          : new FlatButton(
          child: const Text('...',style: TextStyle(fontSize: 25),),
          onPressed: () => setState(() => widget.isExpanded = true))
    ]);
  }
}
