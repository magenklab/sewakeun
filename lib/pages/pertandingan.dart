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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0,20.0,12.0,20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Cari',
                hintText: 'Nama Pertandingan',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}