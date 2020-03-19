import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class BeritaPage extends StatefulWidget {
  @override
  _BeritaPageState createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Futsal Indonesia',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.square(80.0),
            child: TabBar(
              tabs: [
                Text("Terbaru", style: TextStyle(color: Colors.white, fontSize: 15.0), ),
                Text("Jadwal", style: TextStyle(color: Colors.white, fontSize: 15.0),),
                Text("Klasemen", style: TextStyle(color: Colors.white, fontSize: 15.0),),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
