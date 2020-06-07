import 'dart:math';
//import 'settings.json';
import 'package:get_maid/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AuthMode { Signup , Login}

class AuthScreen extends StatelessWidget {
  static const routename = '/auth';

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
                   Color.fromRGBO(255, 188, 117, 1).withopacity(0.9),
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 stops:  [o ,1],
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
                       EdgeInsects.symmetric(vertical: 8,0 , horizontal: 94.0),
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
                           color: Theme.of(context).accentTextTheme.title.color.red,
                           fontSize: 45,
                           fontFamily: 'Anton',
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),

                   ),
                   Flexible(
                     flex: devicesize.width > 600 ? 2 :1,
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

  class AuthCard extends StatefulWidget {
  const AuthCard({
    key key,
  }) : super(key:key);

  @override
    _AuthCardstate createState() => _AuthCardStae();
  }
  class _AuthCardState extends State<AuthCard>{
  final GlobalKey<formstate>_formkey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  Map<String , String> _authdata = {
    'email': '',
    'password':'',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();

  void _submit() {
    if (!_formkey.currentState.validate()) {
      //Invalid;
      return;
    }
    _formkey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    if(_authMode == AuthMode.Login) {
      //Log user in
    }else{
      //Sign user up
    }
    setState(() {
      _isLoading = false;
    });
  }
  void _switchAuthMode(){
    if(_authMode == AuthMode.Login){
      setState(() {
        _authMode = AuthMode.Signup;
      });
    }else{
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }
  }