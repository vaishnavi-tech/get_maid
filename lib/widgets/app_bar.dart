import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red.shade400,
      title: Text('Get maid'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () => debugPrint('Item searched'),),
        IconButton(icon: Icon(Icons.add), onPressed: () => debugPrint('Member added'),),
        IconButton(icon: Icon(Icons.search), onPressed: () => debugPrint('Select member for call'),),
      ],
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Text('Setting'),
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
          ListTile(
            title: Text('Help Center'),
            onTap: () => debugPrint('help center visited'),
          ),
          ListTile(
            title: Text('Setting'),
            onTap: () => debugPrint('Setting selected'),
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () => debugPrint('log out selected'),
          ),
          ListTile(
            title: Text('App Info'),
            onTap: () => debugPrint('App info Displayed'),
          ),
        ],
      ),
    ),
    backgroundColor: Colors.white,
  ),
),
);