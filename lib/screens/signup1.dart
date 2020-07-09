import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'package:get_maid/screens/signin.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'whoaryou.dart';
import '../model/user.dart';
import 'package:scoped_model/scoped_model.dart';


class Signup extends StatefulWidget {
  static var routeName = '/signU';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  var _isLoading = false;
  User user;
  Map<String,String> _authData = {
    'email': ' ',
    'password': ' '

  };
  final _passwordController = TextEditingController();
  Future<void> _submit(Function  signUp) async {

     _formKey.currentState.save();

    print(_authData['email']);
    print(_authData['password']);

     final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM';
     var response = await http.post(
       url,
       headers: {'Content-Type':'application/json'},
       body: jsonEncode({
         'email': _authData['email'],
         'password': _authData['password'],
         'returnSecureToken': true,
       },),

     );
     var responseData = json.decode(response.body);
     print("here");
     print(responseData);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) =>  MainRegister()));

     //notifyListeners();
    // if (responseData['success']) {
  //    Navigator.pushReplacementNamed(context, SignIn.routeName);
   /* } else {
      showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AN ERROR OCCURRED'),
          content: Text("okay"),
          actions: <Widget>[
            FlatButton(onPressed: () {
              Navigator.of(context).pop();
            },
                child: Text('okay')
            ),
          ],
        );
      }
    );
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body:  Form(
        key: _formKey,
        child: SingleChildScrollView(
            child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text(
                        'Signup',
                        style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'E-mail'),
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        /* validator: (value) {
                          if (value.isEmpty /*|| !value.contains('@')*/) {
                            return 'Invalid email!';
                          }
                        },*/
                        onSaved: (value) {
                          print("helooo=============================");

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
                          print("helooo=============================");
                          print(value);
                          _authData['password'] = value;
                        },
                      ),
                      TextFormField(
                          decoration: InputDecoration(labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value){
                            // ignore: missing_return
                            if (value != _passwordController.text){
                              return ('Passwords do not match!');
                            }
                          }

                      ),
                      SizedBox(height: 10.0),
                      if(_isLoading)
                        CircularProgressIndicator()
                      else
                        ScopedModelDescendant<MainModel>(
                          builder:(BuildContext context,
                              Widget child,
                            MainModel model) {
                          return  RaisedButton(
                            child:
                            Text('SignUp'),
                            onPressed: () =>_submit(model. signUp),
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
                      Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop(SignIn.routeName);
                            },
                            child:

                            Center(
                              child: Text('Go Back',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoCondensed')),
                            ),
                          ),
                        ),
                      ),

                        ],
                      )
              )],
                  )),

      )


    );
  }
}