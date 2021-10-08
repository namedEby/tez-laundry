import 'package:flutter/material.dart';
import 'package:tez/notificationpage.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'about.dart';

//import 'background4.dart';
//import 'notificationpage.dart';

class CollecionPageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
              drawer:  SizedBox(
            width: 270,
            child:  new Drawer(              
            child:ListView(
              children: <Widget>[
                Container(
                  color: Color(0xffE4F7FA),
                  child:
                new ListTile(
                  leading: Icon(Icons.phone_android,color: Colors.lightBlueAccent,),
                  title: new Text('5648697987',style: TextStyle(fontSize: 20.0),),  
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
                  title: new Text('Account',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                 leading: Icon(FontAwesome5.address_book,color: Colors.lightBlueAccent,),
                  title: new Text('Services',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.restore,color: Colors.lightBlueAccent,),
                  title: new Text('Order History',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                 leading: Icon(Icons.shopping_basket,color: Colors.lightBlueAccent,),
                  title: new Text('Track Your Order',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/g.png',color: Colors.lightBlueAccent),
                  title: new Text('About Us',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.phone,color: Colors.lightBlueAccent,),
                  title: new Text('Contact Us',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                Divider(
                  color: Color(0xff41BAFF),
                  height: 10,
                  ),
                  new ListTile(
                    title: new Text('Others',style:TextStyle(fontSize: 15.0)),
                  ),
                  new ListTile(
                  leading: Icon(Icons.star_border,color: Colors.lightBlueAccent,),
                  title: new Text('Rate',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Icon(Icons.share,color: Colors.lightBlueAccent,),
                  title: new Text('Share',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),
                new ListTile(
                  leading: Image.asset('assets/logout.png',color: Colors.lightBlueAccent,width: 25.0,),
                  title: new Text('Logout',style: TextStyle(fontSize: 20.0),),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()));
                  },
                ),

              ],
            ),
          ),
        ),
      body: Stack(
        children: <Widget>[
         //Background4App(),
         Positioned(
                  left: 10,
                  top: 20,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Positioned(
                  left: 270,
                  top: 20,
                  child: FlatButton(
                    child: Image.asset('assets/notification (1).png',width: 25),
                    //color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new NotificationPageApp()));
                    },
              ),
            ),
           Container(
            margin: EdgeInsets.only(left: 110,top: 100.0),
            child: Text("Wash & Fold",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              ),
            ) 
          ),
           Container(
              width: 170,
              margin: EdgeInsets.only(bottom: 230,left: 90),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Rectangle3.png'))),
            ),
             Container(
              width: 55.0,
              margin: EdgeInsets.only(left: 150,bottom: 230),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/washing-machine.png'))),
            ),
            
        ],
      ),
      
    );
  }

}