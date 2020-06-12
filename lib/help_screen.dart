import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_maid/main_drawer.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/help';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title :Text('support'),
      ),
      drawer: MainDrawer(),
      body: Center(child: Text('help and feedback'),
      ),
    );
  }
}
