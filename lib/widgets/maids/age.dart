import 'package:flutter/material.dart';
class Age extends StatelessWidget {
  final String age;
  Age(this.age);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(10.0) ,
      child: Text(age),
      // child: ,
    );
  }
}
