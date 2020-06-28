import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  final List<Map<String,dynamic>> maids;
  ProfileScreen(this.maids);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('profile')
    );
  }
}
