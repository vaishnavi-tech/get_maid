import 'package:flutter/material.dart';
class Gender extends StatelessWidget {
  final String gender;
  Gender(this.gender);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10.0) ,
      child: Text(gender),
    );
  }
}
