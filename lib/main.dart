import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_maid/screens/auths.dart';
import 'package:get_maid/screens/main_register.dart';
import 'package:get_maid/screens/register2.dart';
import './screens/help_screen.dart';
import './screens/settings_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_maids_screen.dart';
import './screens/maids_detail.dart';
//import 'screens/auths.dart';
import 'package:get_maid/screens/register.dart';
void main() {
 // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String,dynamic>>_maids=[];

  String get category => null;
  void _addMaid(Map<String, dynamic> maid)
  {
  setState(() {
  _maids.add(maid);
  });
  print(_maids);
  }
  //class _MyAppState extends State<MyApp> {
  List<Map<String,dynamic>>users=[];
  void addUser(Map<String, dynamic> user)
  {
  setState(() {
  users.add(user);
  });
  print(user);
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
     home: MainRegister(),
      //initialRoute: '/',
         routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(addUser),
           AuthPage.routeName:(ctx)=>AuthPage(),
        CategoryMaidsScreen.routeName: (ctx) => CategoryMaidsScreen(_maids,_addMaid),
           SettingsScreen.routeName : (ctx) => SettingsScreen(),
           HelpScreen.routeName : (ctx) => HelpScreen(),
           Register.routeName:(ctx)=>Register(),
           UserRegister.routeName:(ctx)=>UserRegister(),
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
                _maids[index]['title'],
              _maids[index]['address'],
              _maids[index]['gender'],
              _maids[index]['age'],
              _maids[index]['phoneNumber'],
            ),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return  MaterialPageRoute(
        //  builder: (ctx) => TabsScreen(addUser),
          builder: (ctx) =>Register(),

        );
    }
    );
  }
}



