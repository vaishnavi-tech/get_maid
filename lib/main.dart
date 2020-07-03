import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_maid/screens/auths.dart';
import 'package:get_maid/screens/main_register.dart';
import 'package:get_maid/screens/register2.dart';
import './screens/help_screen.dart';
import './screens/settings_screen.dart';
import './screens/tabs_screen.dart';
import 'package:get_maid/screens/register.dart';
import 'package:get_maid/screens/user_login.dart';
void main() {
 // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 /* @override
  Widget build(BuildContext context){
    return MultiProvider(
      ChangeNotifierProvider.value(
        value: Auth(),
      )
    )
  }*/

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
     //   home: Auth(),
      //initialRoute: '/',
         routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(),
           AuthPage.routeName:(ctx)=>AuthPage(),
      //  CategoryMaidsScreen.routeName: (ctx) => CategoryMaidsScreen(title),
           SettingsScreen.routeName : (ctx) => SettingsScreen(),
           HelpScreen.routeName : (ctx) => HelpScreen(),
           Register.routeName:(ctx)=>Register(),
           UserRegister.routeName:(ctx)=>UserRegister(),
           AuthScreen.routeName:(ctx)=>AuthScreen(),
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



