import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';

class PertandinganPage extends StatefulWidget {
  @override
  _PertandinganPageState createState() => _PertandinganPageState();
}

class _PertandinganPageState extends State<PertandinganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertandingan"),
        backgroundColor: TemaApp.greenColor,
      ),
      body: Center(child: Text("Pertandingan")),
    );
  }
}