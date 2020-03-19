import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/colors.dart';
import '../utils/screenutil.dart';
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
      body: Column(
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
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    flex: 1,
                    child: Menu(
                      icon: FontAwesomeIcons.trophy,
                      teks: 'Pertandingan',
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    flex: 1,
                    child: Menu(
                      icon: FontAwesomeIcons.newspaper,
                      teks: 'Berita',
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
            child: Row(
              children: <Widget>[
                Container(
                  width: ScreenUtil().setWidth(1139),
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromRGBO(86, 167, 66, 1),
                          Color.fromRGBO(214, 225, 86, 1)
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                    ),
                  ),
                  child: Center(
                    child: Text('Berita',style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold ),),
                  ),
                ),
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
                      BeritaSlider(
                        teks: 'Berita naon ieu!?',
                        img: './assets/images/berita.png',
                      ),
                      SizedBox(width: 10,),
                      BeritaSlider(
                        teks: 'Ini berita?',
                        img: './assets/images/berita.png',
                      ),
                      SizedBox(width: 10,),
                      BeritaSlider(
                        teks: 'Berita cuyy',
                        img: './assets/images/berita.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {

  Menu({this.icon,this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/lapangan');
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

class BeritaSlider extends StatelessWidget {
  BeritaSlider({this.teks,this.img});

  final String teks;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          width: ScreenUtil().setWidth(1139),
          child: Image(
            image: AssetImage(img),
            width: ScreenUtil().setWidth(1139),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(1139),
          height: 50,
          decoration: BoxDecoration(
              color: TemaApp.greenColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
          ),
          child: Center(
            child: Text(teks,style: TextStyle(fontSize: ScreenUtil().setSp(50),color: Colors.white),),
          ),
        )
      ],
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


