import 'dart:math';
//import 'settings.json';
//import 'package:get_maid/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AuthMode { Signup , Login}

class AuthScreen extends StatelessWidget {
  static const String routename = '/auth';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     final devicesize = MediaQuery.of(context).size;
     return Scaffold(
       body: Stack(
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors:[
                   Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
                   Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 stops:  [0,1],
               ),
             ),
           ),
           SingleChildScrollView(
             child: Container(
               height: devicesize.height,
               width: devicesize.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Flexible(
                     child: Container(
                       margin: EdgeInsets.only(bottom: 20.0),
                       padding:
                       EdgeInsets.symmetric(vertical: 8.0, horizontal: 94.0),
                       transform: Matrix4.rotationZ(-8 * pi/180)
                       ..translate(-10.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.deepPurple.shade800,
                         boxShadow: [
                           BoxShadow(
                             blurRadius: 8,
                             color: Colors.blueGrey,
                             offset: Offset(0 , 2),
                           )
                         ]
                       ),
                       child: Text(
                         'Get_Maid',
                         style: TextStyle(
                           //color: Theme.of(context).accentTextTheme.title.color.red,
                           color: Colors.black,
                           fontSize: 45,
                           fontFamily: 'Anton',
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   ),
                   Flexible(
                     flex: devicesize.width > 600 ? 2 : 1,
                     child: AuthCard(),
                   ),
                 ],
               ),
             ),
           )
         ],
       )
     )
  }
}
// ignore: must_be_immutable
  class AuthCard extends StatefulWidget {
    const AuthCard({
      Key key,
    }) : super(key: key);

    @override
     _AuthCardState createState() => _AuthCardState();
  }
  class AuthCard extends State<AuthCard>{
  final GlobalKey<FormState>_formKey =GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  Map<String , String> _authData = {
  'email':'',
    'password' : '',
  };
  bool isLoading = false;
  final _passwordController = TextEditingController();
  void _submit(){
    if(!_formKey.currentState.validate()){
      //Invalid!
      return;
    }
    _formKey.currentState.save();
    setState((){
      _isLoading = true;
    });
    if (_authMode == AuthMode.Login){
      //Log User In
    }else{
      //Sign User Up
    }
    setState((){
      _isLOading = false;
    });
  }
  void _switchAuthMode(){
    if(_authMode == AuthMode.Login){
      setState((){
        _authMode = AuthMode.Login;
      });
    }
  }
  @override
    Widget build(BuildContext context){
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 8.0,
      child: Container(
        height: _authMode == AuthMode.Signup ? 320 : 260,
        constraints:
        BoxConstraints(minHeight: _authMode == AuthMode.Signup ? 320 : 260),
        width: deviceSize.width * 0.75,
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Invalid email!';
                    }
                  },
                  onSaved: (value) {
                    _authData['email'] = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value){
                    if(value,isEmpty || value.length <5){
                      return 'Password is too Short!';
                    }
                    _authData['password'] = value;
                  },
                ),
                if(_authMode == AuthMode.Signup)
                  TextFormField(
                    enabled: _authMode == AuthMode.Signup,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: _authMode == AuthMode.Signup
                      ?(value){
                      if (value != _passwordController.text){
                        return 'Passwords do not match!'
                      }
                    }
                    : null,
                  ),
                SizedBox(
                  height: 20,
                ),
                if(isLoading)
                  CircularProgressIndicator()
                else
              ],
            ),
          ),
        ),
      ),
    )
  }
  }