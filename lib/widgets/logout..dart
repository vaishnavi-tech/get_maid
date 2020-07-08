//=import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'package:get_maid/screens/signin.dart';
import 'package:scoped_model/scoped_model.dart';
 class Logout extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return ScopedModelDescendant(builder: (BuildContext context,Widget child,MainModel model){
       return ListTile(
          leading: Icon(
            Icons.exit_to_app,
            size: 26,
          ),
         title: Text(
           'Logout',
           style: TextStyle(
             fontFamily: 'RobotoCondensed',
             fontSize: 24,
             fontWeight: FontWeight.bold,
           ),
         ),
         onTap: () {
            model.logout();
            Navigator.of(context).pushReplacementNamed(SignIn.routeName);
         },
       );
     },
     );
   }
 }
