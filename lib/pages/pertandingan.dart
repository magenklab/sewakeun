import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import '../utils/screenutil.dart';
import 'pertandinganlewat.dart' as pdlewat;
import 'pertandinganberjalan.dart' as pdberjalan;

class PertandinganPage extends StatefulWidget {
  @override
  _PertandinganPageState createState() => _PertandinganPageState();
}

class _PertandinganPageState extends State<PertandinganPage>
    with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  TabController controller;
  Icon cusIcon = Icon(Icons.search);

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Pertandingan",
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(60),
            ),
          ),
          backgroundColor: TemaApp.greenColor,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          //bottom
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Text("Sedang Berjalan",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(45),
                        ))),
              ),
              new Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Text("Lewat",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(45),
                        ))),
              ),
            ],
          ),
        ),
        body: TabBarView(controller: controller, children: <Widget>[
          new pdberjalan.PertandinganBerjalanPage(),
          new pdlewat.PertandinganLewatPage(),
        ]));
  }
}
