import 'package:sewakeun/pages/auth.dart';
import 'package:sewakeun/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sewakeun/models/users.dart';
import 'package:sewakeun/pages/navigasi.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);


    //return home atau auth
    if (user == null){
      return Auth();
    }else{
      return Navigasi();
    }
  }
}
