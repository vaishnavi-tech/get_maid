import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TitleDefault extends StatelessWidget {
  final String title;
  TitleDefault(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 30,
        padding: EdgeInsets.all(10.0),
       // padding:EdgeInsets.all(25) ,
        child :Text(
          title,
          style: TextStyle(
              //backgroundColor: Colors.black,
             // height: 10,
              color: Colors.lightGreenAccent,
              fontSize: 30.0,
           //   letterSpacing: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato'),
        )
    );

  }
}
