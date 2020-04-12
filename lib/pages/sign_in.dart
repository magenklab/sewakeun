import 'package:sewakeun/shared/InputDecoration.dart';
import 'package:sewakeun/authentcation//auth_service.dart';
import 'package:flutter/material.dart';
import 'package:sewakeun/shared/loading.dart';
import 'package:sewakeun/utils/colors.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey <FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error ='';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: TemaApp.greenYoungColor,
      appBar: AppBar(
        backgroundColor: TemaApp.greenColor,
        elevation: 0.0,
        title: Text('Sign In'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            },
            icon: Icon(Icons.person, color: Colors.white,),
            label: Text('Register', style: TextStyle(color: Colors.white),),
          ),
        ],
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Email'),
                  validator: (val) => val.isEmpty? 'Enter an Email' : null,
                  onChanged: (val){
                    setState(()=> email = val);
                  },
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  validator: (val) => val.length<8? 'Enter password more than 8 characters' : null,
                  obscureText: true,
                  onChanged: (val){
                    setState(()=> password = val);
                  },
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      setState(()=>loading = true);
                      dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                      if(result==null){
                        setState((){
                          error ='Masukkan Email yang valid';
                          loading = false;
                        });
                      }
                    }
                  },
                  child: Text('Sign In', style: TextStyle(color: Colors.white),),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: RaisedButton(
            child: Text('Sign In Annonymously'),
            onPressed: () async {
              dynamic result = await _auth.SignInAnno();
              if (result == null){
                print('error');
              } else{
                print('Signed In');
                print(result.uid);
              }
            },
          ),
*/