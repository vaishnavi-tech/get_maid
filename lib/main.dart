import 'dart:ui';
import 'package:flutter/material.dart';
import './screens/help_screen.dart';
import './screens/settings_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_maids_screen.dart';
import './screens/maids_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>>_maids = [];

  void _addMaid( Map<String, dynamic> maid) {
    setState(() {
      _maids.add(maid);
    });
    print(_maids);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To find my maid ',
      theme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'RobotoCondensed',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        ),
      ),
     // home: AuthPage(),
      initialRoute: '/',
         routes: {
        '/': (ctx) => TabsScreen( _addMaid),
        CategoryMaidsScreen.routeName: (ctx) => CategoryMaidsScreen(_maids,),
           SettingsScreen.routeName : (ctx) => SettingsScreen(),
           HelpScreen.routeName : (ctx) => HelpScreen(),
         },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if(pathElements[0]!= '') {
          return null;
        }
        if (pathElements[1] =='maid') {
         final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
            builder: (BuildContext context) => MaidPage(
                _maids[index]['title']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return  MaterialPageRoute(
          builder: (ctx) => TabsScreen(_addMaid),
        );
    }
    );
  }
}



