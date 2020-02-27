import 'package:flutter/material.dart';
//import 'package:tez_app/login_page.dart';
import 'package:tez/third_page.dart';
import 'package:tez/fourth_page.dart';
import 'package:tez/second.dart';




  class SecondPageApp extends StatefulWidget {
    @override
    SecondPageAppState createState() => SecondPageAppState();
  }
  
  class SecondPageAppState extends State<SecondPageApp> with SingleTickerProviderStateMixin{ 

    TabController _tabController;
    //final PageController _pageController = PageController();
    
    @override
  void initState() {
    super.initState();
      _tabController = TabController(vsync: this, length: 3);
        
  }

   

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: TabBar(
                  isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                controller: _tabController,
                indicatorColor: Colors.redAccent,
                indicator:CircleTabIndicator(color:Colors.redAccent,radius: 20),

                tabs: <Widget>[
                   SizedBox(),
                  SizedBox(),
                  SizedBox(),
                ],
                ),
              ),
              top: 100,
              left: 158,
            ),
            Container(
            child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                SecondApp(),
                ThirdPage(),
                FourthPage(),
                ]
              ),
            
            )
          ],
        ),
      );
    }
  }     
    class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}      
        
        
        