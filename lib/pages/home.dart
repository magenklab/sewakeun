import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: TemaApp.greenColor,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 40.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/lapangan');
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          height: 100.0,
                          child: Center(child: Text("Info Lapangan")),
                          decoration: BoxDecoration(
                            color: TemaApp.moccaColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                    )),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/pertandingan');
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          height: 100.0,
                          child: Center(child: Text("Pertandingan")),
                          decoration: BoxDecoration(
                            color: TemaApp.greenYoungColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                    )),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/berita');
                      },
                      child: Container(
                          height: 100.0,
                          child: Center(child: Text("Berita")),
                          decoration: BoxDecoration(
                            color: TemaApp.moccaColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
