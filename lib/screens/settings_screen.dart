import 'package:flutter/material.dart';
import 'file:///C:/Users/Prerana/Desktop/find%20my%20maid/get_maid/lib/widgets/main_drawer.dart';

class SettingsScreen  extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar : AppBar(title : Text('settings'),
     ),
      drawer: MainDrawer(),
     body :
      Center(child: Text('hi'),
      ),
    );
  }
}
