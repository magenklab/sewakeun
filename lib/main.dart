import 'package:flutter/material.dart';
import 'package:sewakeun/pages/navigasi.dart';
import 'package:sewakeun/pages/splashscreen.dart';
import 'package:sewakeun/pages/lapangan.dart';
import 'package:sewakeun/pages/pertandingan.dart';
import 'package:sewakeun/pages/berita.dart';

void main() {
  return runApp( MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Sewakeun',
      home: SplashScreenPage(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => Navigasi(),
        '/lapangan': (BuildContext context) => LapanganPage(),
        '/pertandingan': (BuildContext context) => PertandinganPage(),
        '/berita': (BuildContext context) => BeritaPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF56A74D),
        primaryColorLight: Colors.amber[400],
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.white),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
      ),
    );
  }
}