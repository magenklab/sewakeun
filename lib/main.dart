import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sewakeun/authentication/auth_check.dart';
import 'package:sewakeun/authentication/auth_service.dart';
import 'package:sewakeun/pages/auth.dart';
import 'package:sewakeun/pages/edit_profil.dart';
import 'package:sewakeun/pages/navigasi.dart';
import 'package:sewakeun/pages/splashscreen.dart';
import 'package:sewakeun/pages/lapangan.dart';
import 'package:sewakeun/pages/pertandingan.dart';
import 'package:sewakeun/pages/berita.dart';
import 'package:sewakeun/models/users.dart';

void main() {
  return runApp( MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Sewakeun',
        home: SplashScreenPage(),
        routes: <String, WidgetBuilder>{
           '/auth': (BuildContext context) => AuthCheck(),
          '/homepage': (BuildContext context) => Navigasi(),
          '/lapangan': (BuildContext context) => LapanganPage(),
          '/pertandingan': (BuildContext context) => PertandinganPage(),
          '/berita': (BuildContext context) => BeritaPage(),
          '/editprofil':(BuildContext context) => EditProfil(),
        },
        theme: ThemeData(
          primaryColor: Color(0xFF56A74D),
          primaryColorLight: Colors.amber[400],
          primaryIconTheme:
              Theme.of(context).primaryIconTheme.copyWith(color: Colors.white),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}