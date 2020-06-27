import 'package:flutter/material.dart';
class PhoneNumber extends StatelessWidget {
  final String phoneNumber;
  PhoneNumber(this.phoneNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(10.0) ,
      child: Text(phoneNumber),
    );
  }
}
