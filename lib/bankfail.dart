import 'package:flutter/material.dart';
import 'package:tez/background2.dart';

class FailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background2App(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                    Center(child: Text("Payment",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Lato'
                    ),)),
                    SizedBox(width: 10,),
                    Center(child: Text("Failed",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Lato',
                      color: Colors.red,
                    ),)),  
                ],
              ),
              SizedBox(height: 20),
               Container(
                 height: 300,
                 child: Card(
                   child: Column(
                     children: <Widget>[
                       SizedBox(height: 20),
                       Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("ORDER DETAILS",
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           fontFamily: 'Lato'
                         ))
                       ]),
                       SizedBox(height: 20),
                      Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Order No",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 52),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 13),
                         Text("#17907575388",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                       SizedBox(height: 10),
                        Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Transaction No",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 15),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 13),
                         Text("#17907456789575388",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                       SizedBox(height: 10),
                        Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Address",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 60),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 13),
                         Text("Lorem ipsum dolor sit amet,",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                       SizedBox(height: 5),
                       Row(
                         children: <Widget>[
                          SizedBox(width: 150),
                          Text("consetetur sadipscing elitr,",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                        ]),
                        SizedBox(height: 5),
                        Row(
                         children: <Widget>[
                          SizedBox(width: 150),
                          Text("sed diam nonumy eirmod",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                        ]),
                         SizedBox(height: 10),
                        Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Service",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 65),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 13),
                         Text("Wash and Fold",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Price",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 79),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 14),
                         Image.asset('assets/rupees.png', height: 12,color: Colors.lightBlueAccent),
                         Text("240",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                         SizedBox(width: 20),
                         Text("Payment Mode",
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 14),
                         Text(":",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         )),
                         SizedBox(width: 13),
                         Text("Debit / Credit Card",
                         style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato'
                         ))
                       ]),
                     ]
                   )
                 ),
               ),
              SizedBox(height: 20),
             Row(children: <Widget>[
               SizedBox(width: 13),
               Text("PLEASE RETRY",
               style: TextStyle(
                 fontSize: 19,
                 fontWeight: FontWeight.normal,
                 fontFamily: 'Lato'
               ),),
               SizedBox(width: 20),
               Image.asset('assets/rotate.png',color: Colors.lightBlueAccent,height: 40,)
             ]),
             Container(
               alignment: Alignment.centerRight,
               child: InkWell(
                 child: Image.asset('assets/arrow.png',height: 90,),
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(
                     builder: (context) => FailPage()));
                 },
               ),
             ),
            ]
          ),
        ]
      ),
    );
  }
}
