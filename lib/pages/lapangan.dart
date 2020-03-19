import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';

class LapanganPage extends StatefulWidget {
  @override
  _LapanganPageState createState() => _LapanganPageState();
}

class _LapanganPageState extends State<LapanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Lapangan"),
        backgroundColor: TemaApp.greenColor,
      ),
      body: Center(child: Text("Info Lapangan")),
    );
  }
}