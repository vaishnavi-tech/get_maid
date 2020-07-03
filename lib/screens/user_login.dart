import 'dart:math';
import 'package:get_maid/screens/category_maids_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'package:get_maid/settings.json';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:get_maid/widgets/auth.dart';
enum AuthMode { Signup , Login}

class AuthScreen extends StatelessWidget {
  //static const routename = '/auth';

  static String routeName='/auth';

  @override
  Widget build(BuildContext context) {
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
                stops:  [0 ,1],
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
                      EdgeInsets.symmetric(vertical: 8.0 , horizontal: 94.0),
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
                        ],
                      ),
                      child: Text(
                        'Get_Maid',
                        style: TextStyle(
                          //color: Theme.of(context).accentTextTheme.title.color.red,
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
      ),
    );
  }
}


class AuthCard extends StatefulWidget {
  const AuthCard({
    Key key,
  }) : super(key: key);

  @override
    _AuthCardState createState() => _AuthCardState();
}


class _AuthCardState extends State<AuthCard>{
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  Map<String, String> _authData = {
    'email': '',
    'password':'',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();
   String email;
   String password;
  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      //Invalid;
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    if(_authMode == AuthMode.Login) {
      final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM';

      final response = await http.post(
        url,
        body: jsonEncode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
     login(_authData['email'] , _authData['password'],);
    }else{
      final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM';
      final response = await http.post(
        url,
        body: jsonEncode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
      signup(_authData['email'] , _authData['password'],);
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
                  // ignore: missing_return
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
                  validator: (  value ){
                    // ignore: missing_return
                    if(value.isEmpty || value.length <5){

                      // ignore: missing_return
                      return "Password is too Short!";
                    }
                  },
                  onSaved: (value){
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
                      // ignore: missing_return
                      if (value != _passwordController.text){
                        return ('Passwords do not match!');
                      }
                    }
                        : null,
                  ),
                SizedBox(
                  height: 20,
                ),
                if(_isLoading)
                  CircularProgressIndicator()
                else
                  RaisedButton(
                    child:
                    Text(_authMode == AuthMode.Login ? 'LOGIN' : 'SIGNUP'),
                    onPressed: _submit,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.0, vertical:8.0),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryTextTheme.button.color,
                  ),//RaisedButton
                FlatButton(
                  child: Text(
                      '${_authMode == AuthMode.Login ? "SIGNUP" : "LOGIN"} INSTEAD'),
                  onPressed: _switchAuthMode,
                  padding: EdgeInsets.symmetric(horizontal: 30.0 , vertical: 4.0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  textColor: Theme.of(context).primaryColor,
                   // Navigator.pushReplacementNamed(context,  CategoryMaidsScreen.routeName)
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

  void login(String authData, String authData2) {}

  void signup(String authData, String authData2) {}
}

/*class Provider {
  static of(BuildContext context, {bool listen}) {}
}

class Signup {
}

class Login {}
}*/