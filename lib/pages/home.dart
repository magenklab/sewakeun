import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/colors.dart';
import '../utils/screenutil.dart';


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
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 40.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Menu(
                          icon: FontAwesomeIcons.futbol,
                          teks: 'Info Lapangan',
                          navigasi: '/lapangan',
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        flex: 1,
                        child: Menu(
                          icon: FontAwesomeIcons.trophy,
                          teks: 'Pertandingan',
                          navigasi: '/pertandingan',
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        flex: 1,
                        child: Menu(
                          icon: FontAwesomeIcons.newspaper,
                          teks: 'Berita',
                          navigasi: '/berita',
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text('Berita',style: TextStyle(fontSize: ScreenUtil().setSp(40),fontWeight: FontWeight.bold),),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 40.0),
                child: Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                         InkWell(
                           onTap:(){

                           },
                           child: Card(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Image(
                                   image: AssetImage('./assets/images/berita.png'),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Text('31-01-2020'),
                                     Text('Berita Harian')
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage('./assets/images/berita.png'),
                                ),
                                Text('Hai')
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
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
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                    color: TemaApp.greenColor,
                                  ),
                                  child: Center(
                                    child: Text('Zone 73 Match(U16) 2020',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(45),
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0,0),
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage('./assets/images/vamos.png'),
                                        width: 70,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Text('Vamos',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(40)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          color: TemaApp.greenColor,
                                        ),
                                        child: Center(child: Text('VS',
                                        style:TextStyle(
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
                                  padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0,0),
                                  child: Column(
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage('./assets/images/vamos.png'),
                                        width: 70,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Text('Vamos',
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(40)
                                        ),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

//widget buat bikin menu yang kotak kotak
class Menu extends StatelessWidget {

  Menu({this.icon,this.teks, this.navigasi});
  final IconData icon;
  final String teks;
  final String navigasi;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(navigasi);
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(51, 51, 51, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FaIcon(icon, color: Colors.white,size: ScreenUtil().setSp(140),),
            Text(teks,style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40)),
            )],
        ),
      ),
    );
  }
}





/*
class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int _current = 0;
  List imgList = [
    "./assets/images/berita.png",
    "./assets/images/berita.png",
    "./assets/images/berita.png",
    "./assets/images/berita.png",
    "./assets/images/berita.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 200,
      initialPage: 0,
      onPageChanged: (index){
        setState(() {
          _current = index;
        });
      },
      items: imgList.map((imgUrl){
        return Builder(
          builder: (BuildContext context){
            return Container(
              child: Image(
                image: AssetImage(imgUrl),
                fit: BoxFit.fill,
              ),

            );
          },
        );
      },).toList(),
    );
  }
}*/


