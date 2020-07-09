import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'package:get_maid/screens/signup1.dart';
import 'dart:math';
import 'package:scoped_model/scoped_model.dart';
import '../screens/tabs_screen.dart';
import '../model/user.dart';



class SignIn extends StatefulWidget {
  static const routeName = '/sign';
  @override
  _SignInState createState() => new _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  User user;
  var _isLoading=false;
  Map<String, String> _authData = {
    'email': '',
    'password':'',
  };
  final _passwordController = TextEditingController();
  Future<Map<String,dynamic>> _submit(MainModel model) async {

    _formKey.currentState.save();
    final Map<String, dynamic> successInformation =
    await model.login(_authData['email'],_authData['password']);
    if(successInformation['success']){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TabsScreen(model: model)));

    }else{
      showDialog( context: context,builder: (BuildContext context){
        return AlertDialog(
          title: Text( 'AN ERROR OCCURRED'),
          content: Text(successInformation['message']),
          actions: <Widget>[
            FlatButton(onPressed: () {
              Navigator.of(context).pop();
            },
                child: Text('okay')
            ),],);

  }    );}
  }

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Stack(
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
                          child:  Container(
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

                                fontSize: 45,
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: devicesize.width > 600 ? 2 :1,
                          child:
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 8.0,
                            child:Container(
                              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
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
                                        SizedBox(height: 20.0),
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
                                        SizedBox(height: 40.0),
                                        if(_isLoading)
                                          CircularProgressIndicator()
                                        else
                                        ScopedModelDescendant<MainModel>(
                                           builder:(BuildContext context,
                                                         Widget child,
                                                     MainModel model) {
                                                     return RaisedButton(
                                                       child:
                                                      Text('LOGIN'),
                                                      onPressed:() => _submit(model),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(35),
                                                      ),
                                                      padding:
                                                      EdgeInsets.symmetric(horizontal: 30.0, vertical:8.0),
                                                      color: Theme.of(context).primaryColor,
                                                      textColor: Theme.of(context).primaryTextTheme.button.color,
                                                     );
                                                 },
                                        ),
                                        SizedBox(height: 20.0),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'New to get maid app ?',
                                              style: TextStyle(fontFamily: 'RobotoCondensed',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,),
                                            ),
                                            SizedBox(width: 5.0),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(Signup.routeName);
                                              },
                                              child: Text(
                                                'Sign Up',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontFamily: 'RobotoCondensed',
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.underline),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),

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
