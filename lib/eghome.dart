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

class EgHomeApp extends StatelessWidget{
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
                      builder: (BuildContext context) => new CartApp()));
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
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              //height: ,
              //width: ,
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
                        children: <Widget>[
                          SizedBox(width: 40),
                          ListContent(img: 'assets/t-shirt.png'),
                          SizedBox(width: 25),
                          ListContent(img: 'assets/dress.png'),
                          SizedBox(width: 25),
                          ListContent(img: 'assets/jeans.png'),
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 60),
                          Text("T-Shirt",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                          SizedBox(width: 55),
                          Text("Dress",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                          SizedBox(width: 65),
                          Text("Pants",style: TextStyle(fontSize:15, fontFamily: 'Lato',color:Colors.white)),
                        ]
                      ),
                        ]
                      )
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Card(
                    child:Table(
                      children:[
                        TableRow(
                          children: [ 
                            Column(
                              children: <Widget>[
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Washing',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                         Divider(
                          thickness: 1, 
                         ),
                              ],
                            ),
                           // VerticalDivider(thickness: 2,),
                             Column(
                              children: <Widget>[
                                Image.asset('assets/laundry.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Others',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                         Divider(
                           thickness: 1,
                         ),
                              ],
                            ),
                             //VerticalDivider(thickness: 2,),
                            Column(
                              children: <Widget>[
                                Image.asset('assets/fashion.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Others',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                         Divider(
                           thickness: 1,
                         ),
                              ],
                            ),
                             //VerticalDivider(thickness: 2,),
                           
                            
                         
                          ]
                        ),
                        TableRow(
                          children:[
                             Column(
                              children: <Widget>[
                                Image.asset('assets/Iron.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Others',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                         
                              ],
                            ),
                            // VerticalDivider(thickness: 2,),
                            Column(
                              children: <Widget>[
                                Image.asset('assets/washing.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Others',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                         
                              ],
                            ),
                            // VerticalDivider(thickness: 2,),
                            Column(
                              children: <Widget>[
                                Image.asset('assets/towel.png',width: 100,height: 50),
                                InkWell(
                              child: Text('Others',
                              style: TextStyle(
                              fontFamily: 'Lato'
                           ),),
                           onTap:() {
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context)=> HomeViewApp(),
                             ));
                           }   
                         ),
                        
                              ],
                            ),
                           
                          ]
                        )
                      ]
                    )
                  ) 
                  ),
                  
                  
          
                ]
              )
            )
        ]
      ),
    );   
  }
}