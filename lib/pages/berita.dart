import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sewakeun/utils/colors.dart';

class BeritaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MagenkLab",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text("FUTSAL INDONESIA"),
              backgroundColor: Colors.green,
              bottom: TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Futsal"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Sepakbola"),
                      ),
                    )
                    
                  ]),
            ),
            body: TabBarView(children: [
              Container(
                child: Text("Coba"),
              ),
              Container(
                child: Text("Coba"),
              )
            ]),
          )),
    );
  }


}

