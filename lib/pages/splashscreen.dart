import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:sewakeun/utils/screenutil.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.of(context).pushReplacementNamed('/auth'));
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      allowFontScaling: true,
    )..init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: TemaApp.greenColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(100))),
                    Image.asset(
                      "assets/images/football.png",
                      color: Colors.black,
                      width: 155.0,
                      height: 155.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 100.0)),
                      Text(
                        "From",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: ScreenUtil().setSp(45),
                        ),
                      ),
                      Text(
                        "Magenklab",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
