import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:sewakeun/utils/screenutil.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: TemaApp.greenColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              CircleAvatar(
                radius: ScreenUtil.screenWidth/100*15,
                backgroundImage: AssetImage('./assets/images/football.png'),
              ),
            ],
          ),
        ],
      ),
    );


  }
}
