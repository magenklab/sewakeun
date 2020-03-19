import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';

class BeritaPage extends StatefulWidget {
  @override
  _BeritaPageState createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: TemaApp.greenColor,
      ),
      body: Center(child: Text("Berita")),
    );
  }
}
