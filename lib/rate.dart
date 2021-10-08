import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

 class RatePage extends StatefulWidget {
  @override
  _RatePageState createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
  double rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                          color: Color(0xFF01579B),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0)
                          ),
                        ),
                height: MediaQuery.of(context).size.height / 1.4,
                width: MediaQuery.of(context).size.width / 1,
                child: Column(children: <Widget>[
                  SizedBox(height: 10),
                  Image.asset('assets/man.png',height:80,width: 80),
                  SizedBox(height: 5),
                  Text("John Smith",style: TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Lato')),
                  SizedBox(height: 5),
                  Text("XY-182",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: 'Lato')),
                  SizedBox(height: 20),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 40),
                  Row(children: <Widget>[
                    SizedBox(width: 160),
                  Image.asset('assets/rupees.png',height:15,color: Colors.lightBlueAccent),
                  Text("80",style: TextStyle(fontSize: 17,fontFamily: 'Lato',color: Colors.white)),
                  ]),
                  SizedBox(height:40),
                  Divider(
                    thickness:1,
                  ),
                  SizedBox(height: 30),
                  Text("Rate your Experience",style: TextStyle(fontFamily: 'Lato',color: Colors.white)),
                  SizedBox(height: 20),
                 RatingBar(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    //size: 10,
                    color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                    print(rating);
                    },
                  ),
                  SizedBox(height: 30),
                  Container(
                        height: 40,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                          ),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Center(
                          child: InkWell(
                            child: Text("SUBMIT RATING"), 
                             onTap: null,
                          ),
                        ),
                      )
                ]),
            ),
          )
        ]
      ),
    );
  }
}