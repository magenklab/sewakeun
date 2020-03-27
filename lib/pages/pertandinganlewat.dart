import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import '../utils/screenutil.dart';

class PertandinganLewatPage extends StatefulWidget {
  @override
  _PertandinganLewatPageState createState() => _PertandinganLewatPageState();
}

class _PertandinganLewatPageState extends State<PertandinganLewatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: ScreenUtil().setWidth(900),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: TemaApp.greenColor,
                                    ),
                                    child: Center(
                                      child: Text('Zone 73 Match(U16) 2020',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(45),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(25.0),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(70),
                                            color: TemaApp.greenColor,
                                          ),
                                          child: Center(
                                              child: Text(
                                            'VS',
                                            style: TextStyle(
                                              fontSize: ScreenUtil().setSp(60),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: ScreenUtil().setWidth(900),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: TemaApp.greenColor,
                                    ),
                                    child: Center(
                                      child: Text('Zone 73 Match(U16) 2020',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(45),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(25.0),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(70),
                                            color: TemaApp.greenColor,
                                          ),
                                          child: Center(
                                              child: Text(
                                            'VS',
                                            style: TextStyle(
                                              fontSize: ScreenUtil().setSp(60),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: ScreenUtil().setWidth(900),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: TemaApp.greenColor,
                                    ),
                                    child: Center(
                                      child: Text('Zone 73 Match(U16) 2020',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(45),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(25.0),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(70),
                                            color: TemaApp.greenColor,
                                          ),
                                          child: Center(
                                              child: Text(
                                            'VS',
                                            style: TextStyle(
                                              fontSize: ScreenUtil().setSp(60),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 12.0, 20.0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              './assets/images/vamos.png'),
                                          width: 70,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Text(
                                          'Vamos',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
