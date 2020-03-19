import 'package:flutter/material.dart';
import 'package:tez/about.dart';
import 'package:tez/account.dart';
import 'package:tez/contact.dart';
import 'package:tez/notificationpage.dart';
import 'package:tez/order.dart';
import './billpage.dart';
import 'package:tez/phonelogin.dart';
import 'package:tez/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'settings.dart';



class MyCartPage extends StatelessWidget {
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
                  leading: Icon(Icons.info,color: Colors.lightBlueAccent),
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
        children:<Widget>[    
          Column(
            children: <Widget>[
              Container(
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                SizedBox(width: 20),
              new InkWell(
              child: Icon(Icons.menu),
              onTap: (){
                _scaffoldKey.currentState.openDrawer();
              },),
              SizedBox(width: 80),
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top:60),
              child:Text("Tez Laundry",
              style: TextStyle(
                fontSize:20,
                fontFamily: 'Lato'
              )),
            ),
            SizedBox(width: 60),
              new IconButton(
              icon: Image.asset('assets/notification.png'),
              iconSize: 20,
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> NotificationPageApp()));  
              },),
              ]),
              ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40
                  ),
                  Center(
                    child: Text("My Cart",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ))
                  ),
                  SizedBox(
                    height: 50
                  ),
                  Container(
                    height: 60,
                  child:Card(
                    child: Row(children: <Widget>[
                      SizedBox(width:10),
                      Image.asset('assets/t-shirt.png',height:40,width:80,color: Color(0xffb41BAFF)),
                      SizedBox(width: 5),
                      Text("Shirt",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width:50),
                      Text("X",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 20),
                      Text("4",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 30),
                      Image.asset('assets/rupees.png',height:20,width: 10,color: Color(0xffb41BAFF)),
                      SizedBox(width: 20),
                      Text("80",
                      style: TextStyle(fontSize:18,)),
                    ]),
                  ),),
                  Container(
                    height: 60,
                  child:Card(
                    child: Row(children: <Widget>[
                      SizedBox(width:10),
                      Image.asset('assets/jeans.png',height:40,width:80,color: Color(0xffb41BAFF)),
                      SizedBox(width: 5),
                      Text("Pants",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width:50),
                      Text("X",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 20),
                      Text("4",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 30),
                      Image.asset('assets/rupees.png',height:20,width: 10,color: Color(0xffb41BAFF)),
                      SizedBox(width: 20),
                      Text("80",
                      style: TextStyle(fontSize:18,)),
                    ]),
                  ),),
                  Container(
                    height: 60,
                  child:Card(
                    child: Row(children: <Widget>[
                      SizedBox(width:10),
                      Image.asset('assets/dress.png',height:40,width:80,color: Color(0xffb41BAFF)),
                      SizedBox(width: 5),
                      Text("Pants",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width:50),
                      Text("X",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 20),
                      Text("4",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width: 30),
                      Image.asset('assets/rupees.png',height:20,width: 10,color: Color(0xffb41BAFF)),
                      SizedBox(width: 20),
                      Text("80",
                      style: TextStyle(fontSize:18,)),
                    ]),
                  ),),
                  Container(
                    height: 60,
                  child:Card(
                    child: Row(children: <Widget>[
                      SizedBox(width:10),
                      Image.asset('assets/currency.png',height:40,width:80,),
                      SizedBox(width: 5),
                      Text("TOTAL",
                      style: TextStyle(fontSize:18,)),
                      SizedBox(width:60),
                      Text("=",
                      style: TextStyle(fontSize:18)),
                      SizedBox(width: 45),
                      Image.asset('assets/rupees.png',height:20,width: 10,color: Color(0xffb41BAFF)),
                      SizedBox(width: 20),
                      Text("240",
                      style: TextStyle(fontSize:18,)),
                    ]),
                  ),),
                ],
              ),
            ],
          ),
          Align(
              alignment:Alignment.bottomCenter,
            child: Container(    
              height: 50,
              width:300,
              decoration: new BoxDecoration(
                  color: Color(0xFF01579B), //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(
                      alignment:Alignment.center,
                      margin: EdgeInsets.only(left:30),
                      child: InkWell(
                        child:Text("Request Pickup",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                    onTap:(){
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> BillPage(),));
                    }
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/bike.png',height:30),
                   
                  ]
                ),  
              ),
            )

        ]
      )
    );
  }
}
