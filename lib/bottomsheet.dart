//import 'dart:js';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tez/message.dart';
import './geolocation.dart';
import './mycart.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomeViewApp extends StatefulWidget {
  @override
  _HomeViewAppState createState() => _HomeViewAppState();
}

class _HomeViewAppState extends State<HomeViewApp> {

  final notifications = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
   
   final settingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
   final settingsIOS = IOSInitializationSettings(
     onDidReceiveLocalNotification: (id,title,body,payload)=>
     onSelectNotification(payload));

     notifications.initialize(
        InitializationSettings(settingsAndroid, settingsIOS),
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async => await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MessagePage(payload: payload)),
      );

      Future showOngoingNotification(
  FlutterLocalNotificationsPlugin notifications, {
  @required String title,
  @required String body,
  int id = 0,
}) =>
    _showNotification(notifications,
        title: title, body: body, id: id, type: _ongoing);

NotificationDetails get _ongoing {
  final androidChannelSpecifics = AndroidNotificationDetails(
    'your channel id',
    'your channel name',
    'your channel description',
    importance: Importance.Max,
    priority: Priority.High,
    ongoing: false,
    autoCancel: true,
  );
  final iOSChannelSpecifics = IOSNotificationDetails();
  return NotificationDetails(androidChannelSpecifics, iOSChannelSpecifics);
}

Future _showNotification(
  FlutterLocalNotificationsPlugin notifications, {
  @required String title,
  @required String body,
  @required NotificationDetails type,
  int id = 0,
}) =>
    notifications.show(id, title, body, type);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:120),
            child: Center(
              child: RaisedButton(child: Text("Location"), onPressed: () {
                 Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) =>  GeoListenPage()));
              }),
            ),
          ),
          RaisedButton(
            child: Text("My Cart"),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => MyCartPage()
              ));
            }
          ),
           RaisedButton(
              child: Text('Show notification'),
              onPressed: () => showOngoingNotification(notifications,
                  title: 'A New Message Arrived', body: 'tez laundry'),
            ),
          
        Container(
          color: Color(0xffd41BAFF).withOpacity(0.46),
          height: 80,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 30,left:20) ,
            child: Text("Enter Number Of Clothes"),
          ),
        ),
        ],
      ),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showBottomSheet(
            context: context,
            builder: (context) => Stack(
              children:<Widget>[
                Container(
                  child: Center(
                    //color:Colors.red,
                    child: Text("Enter Number Of Clothes")
                    ), 
                  color: Color(0xffd41BAFF).withOpacity(0.46),
                  height: 250,
                ),
                
              ])
        );
      },
    );
  }
}
