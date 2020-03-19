import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sewakeun/pages/home.dart';
import 'package:sewakeun/pages/profile.dart';


class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    Profil(),
  ];

  Widget currentScreen = HomePage();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.futbol,size: 50,color: Colors.black,),
        backgroundColor: Colors.green,
        onPressed: (){

        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: currentTab==0? Colors.green : Colors.grey[400],
              onPressed: () {
                setState(() {
                  currentScreen = HomePage();
                  currentTab = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              color: currentTab==1? Colors.green : Colors.grey[400],
              onPressed: () {
                setState(() {
                  currentScreen = Profil();
                  currentTab = 1;
                });
              },
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
