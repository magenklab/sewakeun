import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewakeun/utils/colors.dart';
import 'package:sewakeun/utils/layout.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class EditProfil extends StatefulWidget {
  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  File _image;

  Future getImage(bool isCamera) async{
    File image;
    if(isCamera){
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    }else{
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {
    Column _buildBottomNavigationMenu(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Ambil Foto dari kamera'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              getImage(true);
            },

          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Ambil Foto dari galeri'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              getImage(false);
            },
          )
        ],
      );
    }

    void _onButtonPressed(){
      showModalBottomSheet(
          context: context,
          builder: (context){
            return Container(
              color: Color(0xFF737373),
              child: Container(
                height: 150,
                child: _buildBottomNavigationMenu(),
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10),
                      topRight: const Radius.circular(10),
                    )
                ),
              ),
            );
          }
      );
    }
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: TemaApp.greenColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Text('Foto Profil', style: TextStyle(fontSize: SizeConfig.width*4),),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: SizeConfig.width*30,
                          width: SizeConfig.width*30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0)
                              ),
                            child: _image !=null? Image.file(_image,fit: BoxFit.fill,): Image.asset('assets/images/berita.png',fit: BoxFit.fill,),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            height: SizeConfig.width*7,
                            width: SizeConfig.width*7,
                            child: new FloatingActionButton(
                              child: const Icon(Icons.edit),
                              backgroundColor: Colors.green.shade800,
                              onPressed:() =>_onButtonPressed(),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                width: SizeConfig.width*80,
                margin: EdgeInsets.symmetric(vertical:30),
                child: GestureDetector(
                  onTap: (){
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nama Lengkap",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "No Telepon",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 40,
                        child: RaisedButton(
                            onPressed: (){},
                          child: Text('Simpan'),

                            ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
