import 'package:flutter/material.dart';
import 'package:tez/about.dart';
import 'package:tez/account.dart';
import 'package:tez/cart.dart';
import 'package:tez/contact.dart';
import 'package:tez/notificationpage.dart';
import 'package:tez/order.dart';
import 'package:tez/phonelogin.dart';
import 'package:tez/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PaymentPage extends StatelessWidget {
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
            Positioned(
            left: 10,
            top: 25,
            child: new InkWell(
              child: Icon(Icons.menu),
              onTap: (){
                _scaffoldKey.currentState.openDrawer();
              },)
            ),
             Positioned(
              left: 290,
              top: 20,
              child: new IconButton(
              icon: Image.asset('assets/notification.png'),
              iconSize: 20,
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> NotificationPageApp()));  
              },)
             ),
             Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top:50),
              child:Text("Tez Laundry",
              style: TextStyle(
                fontSize:20,
              )),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top:100),
              child: Text("My Payments",
              style:TextStyle(fontSize:20)),
            ),
            
             
             
          ]
        )
    );
  }
}


/* Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 20),
                    Container(
                      height:60,
                   child: Card(
                     child: Row(children: <Widget>[
                      SizedBox(width: 20),
                      Image.asset('assets/googlepay.jpg',width:50,height:30),
                      SizedBox(width:20),
                      Text("Google Pay",
                      style: TextStyle(fontSize:20)),
                     ]),
                    ),),
                  ]
                ),*/