import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:sewakeun/utils/layout.dart';
import 'package:sewakeun/authentication/auth_service.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person, color: Colors.white,),
            label: Text('SignOut', style: TextStyle(color: Colors.white),),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],
        backgroundColor: TemaApp.greenColor,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: TemaApp.moccaColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text('Foto Profil', style: TextStyle(fontSize: SizeConfig.width*4),),
                          ),
                          CircleAvatar(
                            radius: SizeConfig.width*15,
                            backgroundImage: AssetImage('assets/images/football.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: SizeConfig.height*1.5,
                        width: SizeConfig.width*12,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[500]),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              Navigator.pushNamed(context, '/editprofil');
                            });
                          },
                          child: Text('Edit',style: TextStyle(fontSize: SizeConfig.width*2,color: Colors.grey[600]
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text('Adri Fatwal Fiqhi', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: SizeConfig.width*5),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Email', style: TextStyle(fontSize: SizeConfig.width*5,),),
                    Text('adree.fatwa@gmail.com',style: TextStyle(fontSize: SizeConfig.width*5),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );


  }
}
