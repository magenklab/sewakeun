import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sewakeun/utils/colors.dart';
import '../utils/screenutil.dart';

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
                title: Text("BERITA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(70),
                      fontWeight: FontWeight.bold,
                    )),
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
                          child: Text("Futsal",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(40),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Sepakbola",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(40),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ]),
              ),
              body: TabBarView(children: <Widget>[
                //bagian Futsal :
                Center(
                    child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //bagian atas Berita
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 0, 12.0, 40.0),
                          child: Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/berita.png'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/berita.png'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/berita.png'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/berita.png'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/berita.png'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
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
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: ScreenUtil().setWidth(900),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  color: TemaApp.greenColor,
                                ),
                                child: Center(
                                  child: Text('Futsal Indonesia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(60),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                              //Bagiann List Berita
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/berita.png'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
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
                )),

                //Bagian Sepakbola
                Center(
                    child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //bagian atas Berita
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 0, 12.0, 40.0),
                          child: Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/persib.jpg'),
                                           width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian ',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/persib.jpg'),
                                            width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/persib.jpg'),
                                           width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/persib.jpg'),
                                          width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Card(
                                      child: Column(
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(
                                                './assets/images/persib.jpg'),
                                          width: 250,
                                            height: 200,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Text(
                                            '31-01-2020',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            'Berita Harian',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        //bagian List Berita
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: ScreenUtil().setWidth(900),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  color: TemaApp.greenColor,
                                ),
                                child: Center(
                                  child: Text('Futsal Indonesia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(45),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 12.0, 20.0, 0),
                                            child: Column(
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      './assets/images/persib.jpg'),
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            //isi berita
                                            children: <Widget>[
                                              Text(
                                                "21 Mar 2020",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Ada",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
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
                )),
              ]))),
    );
  }
}
