import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/colors.dart';
import '../utils/screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Pertandingan Mendatang',style: TextStyle(fontSize: ScreenUtil().setSp(40),fontWeight: FontWeight.bold),),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: Pertandingan(
                        match: 'Zone 73 Match(U16) 2020',
                        logo_tim_1: './assets/images/vamos.png',
                        nama_tim_1: 'Vamos',
                        logo_tim_2: './assets/images/leo.png',
                        nama_tim_2: 'Leo',
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Pertandingan(
                        match: 'Zone 73 Match(U16) 2020',
                        logo_tim_1: './assets/images/vamos.png',
                        nama_tim_1: 'persib',
                        logo_tim_2: './assets/images/leo.png',
                        nama_tim_2: 'persija',
                      ),
                    )
                  ],
                )
              ),*/
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                child: Container(
                  height: 200,
                  child: StreamBuilder(
                    stream: Firestore.instance.collection("pertandingan").snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      return task(
                        document: snapshot.data.documents,
                        logo_tim_1: './assets/images/vamos.png',
                        logo_tim_2: './assets/images/vamos.png',
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
//-----------------------------------------------------------------------------
//Material
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

//widget perrtandingan
class Pertandingan extends StatelessWidget {
  Pertandingan({this.match,this.logo_tim_1,this.nama_tim_1,this.logo_tim_2,this.nama_tim_2});
  final String match;
  final String logo_tim_1;
  final String nama_tim_1;
  final String logo_tim_2;
  final String nama_tim_2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      height: ScreenUtil.screenHeight/100*25,
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: ScreenUtil.screenWidth/100*70,
                  height: ScreenUtil.screenHeight/100*5,
                  decoration: BoxDecoration(
                      color: TemaApp.greenColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child: Center(
                    child: Text(match,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(50)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil.screenHeight/100*3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage(logo_tim_1),
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Text(nama_tim_1)
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: ScreenUtil.screenHeight/100*1,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: TemaApp.greenColor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text('VS', style: TextStyle(fontSize: ScreenUtil().setSp(50), fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage(logo_tim_2),
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Text(nama_tim_2)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );;
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

class task extends StatelessWidget {
  task({this.document,this.logo_tim_1,this.logo_tim_2});
  final List<DocumentSnapshot> document;
  final String logo_tim_1;
  final String logo_tim_2;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: document.length,
          itemBuilder: (BuildContext context, int i){
            String title = document[i].data['title'].toString();
            String tim1 = document[i].data['tim1'].toString();
            String tim2 = document[i].data['tim2'].toString();
            return Container(
              width: ScreenUtil.screenWidth,
              height: ScreenUtil.screenHeight/100*25,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil.screenWidth/100*70,
                          height: ScreenUtil.screenHeight/100*5,
                          decoration: BoxDecoration(
                              color: TemaApp.greenColor,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                          ),
                          child: Center(
                            child: Text(title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(50)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil.screenHeight/100*3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage(logo_tim_1),
                              width: 70,
                              fit: BoxFit.fill,
                            ),
                            Text(tim1)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: ScreenUtil.screenHeight/100*1,),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: TemaApp.greenColor,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(
                                child: Text('VS', style: TextStyle(fontSize: ScreenUtil().setSp(50), fontWeight: FontWeight.bold,color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage(logo_tim_2),
                              width: 70,
                              fit: BoxFit.fill,
                            ),
                            Text(tim2)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      );

  }
}


