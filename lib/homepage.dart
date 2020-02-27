import 'package:flutter/material.dart';
import 'package:tez/about.dart';
import 'package:tez/account.dart';
import 'package:tez/background4.dart';
import 'package:tez/cart.dart';
import 'package:tez/contact.dart';
import 'package:tez/listcontent.dart';
import 'package:tez/notificationpage.dart';
import 'package:tez/order.dart';
import './bottomsheet.dart';
import 'package:tez/phonelogin.dart';
import 'package:tez/services.dart';
import 'package:flutter_icons/flutter_icons.dart';


class HomePageApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _HomePageAppState();
  }

}

class _HomePageAppState extends State<HomePageApp>{
 
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
        children: <Widget>[
          Background4App(),
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
             
            Padding(
              padding: EdgeInsets.all(0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,     
               children: <Widget>[
                 Text("Tez Laundry",
                 style: TextStyle(
                   fontSize:30,
                   fontFamily: 'Lato'
                 )),
                 SizedBox(height:20),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(width:10),
                     Column(
                       children: <Widget>[
                         ListContent(img: 'assets/t-shirt.png',),
                         Text('Shirts',
                         style: TextStyle(
                             fontFamily: 'Lato'
                           ))
                       ],
                     ),
                     SizedBox(width:10),
                     Column(
                       children: <Widget>[
                         ListContent(img: 'assets/dress.png',),
                         Text('Dress',
                         style: TextStyle(
                             fontFamily: 'Lato'
                           ))
                       ],
                     ),
                     SizedBox(width:10),
                     Column(
                       children: <Widget>[
                         ListContent(img: 'assets/jeans.png',),
                         Text('Pants',
                         style: TextStyle(
                             fontFamily: 'Lato'
                           ))
                       ],
                     ),
                     SizedBox(width:10),
                     Column(
                       children: <Widget>[
                         ListContent(img: 'assets/towel1.png',),
                         Text('Bed She',
                         style: TextStyle(
                             fontFamily: 'Lato'
                           ))
                       ],
                     )
                   ]),
                   SizedBox(height:20),
                   Text('Services',
                   style: TextStyle(
                     fontSize: 30,
                     fontFamily: 'Lato'
                   ) ,
                  ),
                  SizedBox(height:30),
                  Card(
                    child:Table(
                      children:[
                        TableRow(
                          children: [ 
                            Column(
                              children: <Widget>[
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                           // VerticalDivider(thickness: 2,),
                             Column(
                              children: <Widget>[
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                                Image.asset('assets/washingm2.png',width: 100,height: 50),
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
                      
                         
                       ],
                     )
            )
                     ]
                  
          )
          );
    
    
          
          
              
        
  }

}