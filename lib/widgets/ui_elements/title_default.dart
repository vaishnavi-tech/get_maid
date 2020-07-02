import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TitleDefault extends StatelessWidget {
  final String title;
  TitleDefault(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child :Text(
          title,
          style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato'),
        )
    );

  }
}
