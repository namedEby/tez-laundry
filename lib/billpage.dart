import 'package:flutter/material.dart';
import 'package:tez/about.dart';
import 'package:tez/account.dart';
import 'package:tez/cart.dart';
import 'package:tez/contact.dart';
import 'package:tez/notificationpage.dart';
import 'package:tez/order.dart';
import 'package:tez/settings.dart';
import './premium.dart';
import 'package:tez/phonelogin.dart';
import 'package:tez/services.dart';
import './coupon.dart';
import './payments.dart';
import 'package:flutter_icons/flutter_icons.dart';


class BillPage extends StatelessWidget{
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
          Positioned(
            left: 10,
            top: 25,
            child: new InkWell(
              child: Icon(Icons.menu),
              onTap: (){
                _scaffoldKey.currentState.openDrawer();
              },
            )
              
             ),
             Positioned(
               left: 290,
               top: 20,
            child: new IconButton(
              icon: Image.asset('assets/notification.png'),
              iconSize: 20,
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> NotificationPageApp(),
              ));
               
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height:20),
                  Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width:30),
                        Image.asset('assets/washingm2.png',height: 120,width:60),
                        SizedBox(width:30),
                        Text("Wash & Fold",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)
                      ],)
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 150,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height:10),
                          Row(
                            children: <Widget>[
                              SizedBox(width:20),
                              Text("Bill Details",
                              style: TextStyle(fontSize: 17)
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(children: <Widget>[
                            SizedBox(width: 20,),
                            Text("Pants",
                          style: TextStyle(fontSize: 17)
                          ),
                          SizedBox(width: 150,),
                          Text("X",
                          style: TextStyle(fontSize: 17,
                          color: Colors.lightBlue)
                          ),
                          SizedBox(width: 20,),
                          Text("2",
                          style: TextStyle(fontSize: 17)
                          ),
                          ],),
                          SizedBox(height: 10,),
                           Row(children: <Widget>[
                            SizedBox(width: 20,),
                            Text("Saree",
                          style: TextStyle(fontSize: 17)
                          ),
                          SizedBox(width: 150,),
                          Text("X",
                          style: TextStyle(fontSize: 17,
                          color: Colors.lightBlue)
                          ),
                          SizedBox(width: 20,),
                          Text("5",
                          style: TextStyle(fontSize: 17)
                          ),
                          ],),
                          SizedBox(height: 10,),
                           Row(children: <Widget>[
                            SizedBox(width: 20,),
                            Text("Blouse",
                          style: TextStyle(fontSize: 17)
                          ),
                          SizedBox(width: 140,),
                          Text("X",
                          style: TextStyle(fontSize: 17,
                          color: Colors.lightBlue)
                          ),
                          SizedBox(width: 20,),
                          Text("5",
                          style: TextStyle(fontSize: 17)
                          ),
                          ],),
                        ]
                      )
                    ),
                  ),
                  SizedBox(height:5),
                  Card(
                    child: Row(children: <Widget>[
                      SizedBox(width:20),
                      Image.asset('assets/boy.png',height: 50,width:80),
                      SizedBox(width: 17,),
                      InkWell(
                        child: Text("PREMIUM DELIVERY",
                      style: TextStyle(fontSize: 20),),
                        onTap: () {
                          Navigator.push(context,new MaterialPageRoute(
                            builder: (context) => PremiumPage()
                          ));
                        }
                      ),
                      
                    ]),
                  ),
                  SizedBox(height:5),
                  Card(
              child: Row(children: <Widget>[
                SizedBox(width:20),
                Image.asset('assets/voucher.png',height: 50, width:80),
                SizedBox(width: 17),
                InkWell(
                      child: Text("APPLY COUPON",
                        style: TextStyle(fontSize: 20,)),
                        onTap: () {
                          Navigator.push(context,new MaterialPageRoute(
                            builder: (context) => CouponPage()
                          ));
                        }
                      ),
                
              ])
            ),
            SizedBox(height:10),
              Container(
                height: 120,
                  child:Card(
                  child: Column(children: <Widget>[
                SizedBox(height: 10),
                Row(children: <Widget>[
                  SizedBox(width:20),
                  Text("Total Item",
                  style: TextStyle(fontSize: 17,)),
                  SizedBox(width:120),
                  Text("X",
                  style: TextStyle(fontSize: 17,color: Colors.lightBlue)),
                   SizedBox(width: 20,),
                    Text("12",
                    style: TextStyle(fontSize: 17)),
                ]),
                SizedBox(height: 10),
                Row(children: <Widget>[
                  SizedBox(width:20),
                  Text("Delivery Fee",
                  style: TextStyle(fontSize: 17,)),
                  SizedBox(width:104),
                 Image.asset('assets/rupees.png',color:Color(0xffd41BAFF),height:17,width:17),
                   SizedBox(width: 16,),
                    Text("20",
                    style: TextStyle(fontSize: 17)),
                ]),
                SizedBox(height: 10),
                Row(children: <Widget>[
                  SizedBox(width:20),
                  Text("To Pay",
                  style: TextStyle(fontSize: 17,)),
                  SizedBox(width:145),
                 Image.asset('assets/rupees.png',color:Color(0xffd41BAFF),height:17,width:17),
                   SizedBox(width: 16,),
                    Text("240",
                    style: TextStyle(fontSize: 17)),
                ]),
                  
              ])
              
            ),),
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
                        builder: (context)=> PaymentPage(),));
                    }
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/motorbiking.png',height:30),
                   
                  ]
                ),  
              ),
            )
           

               
                
              
            
        ]
      )
    );
  }

}