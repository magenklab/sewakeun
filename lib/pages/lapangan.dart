import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';

const kMainColor = Color(0xFF573851);

class LapanganPage extends StatefulWidget {
  @override
  _LapanganPageState createState() => _LapanganPageState();
}

class _LapanganPageState extends State<LapanganPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("uwuwuwuw"),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicator: CircleTabIndicator(color: kMainColor, radius: 2),
              tabs: <Widget>[
                Tab(
                  child: Text('Lap. Sintetis',
                      style: TextStyle(color: kMainColor)),
                ),
                Tab(
                  child: Text('Lap. Interlock',
                      style: TextStyle(color: kMainColor)),
                ),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

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
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
