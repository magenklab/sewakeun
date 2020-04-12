import 'package:sewakeun/shared/InputDecoration.dart';
import 'package:sewakeun/authentication//auth_service.dart';
import 'package:flutter/material.dart';
import 'package:sewakeun/shared/loading.dart';


class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey <FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error ='';
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        title: Text('Sign Up'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            },
            icon: Icon(Icons.person, color: Colors.white,),
            label: Text('Sign In', style: TextStyle(color: Colors.white),),
          ),
        ],
        centerTitle: true,
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
                      dynamic result = await _auth.registerWithEmailAndPassword(email,password);
                      if(result==null){
                        setState((){
                          error ='Masukkan Email yang valid';
                          loading = false;
                        });
                      }
                    }
                  },
                  child: Text('Register', style: TextStyle(color: Colors.white),),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
