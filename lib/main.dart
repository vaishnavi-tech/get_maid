import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'package:get_maid/screens/category_maids_screen.dart';
import 'package:get_maid/screens/main_register.dart';
import 'package:get_maid/screens/profile_screen.dart';
import 'package:get_maid/screens/register2.dart';
import 'package:get_maid/screens/signin.dart';
import 'package:get_maid/screens/signup1.dart';
import 'package:scoped_model/scoped_model.dart';
import './screens/tabs_screen.dart';

void main() {
 // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MainModel _model = MainModel();

  @override
  void initState() {
     _model.autoAuthenticate();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final MainModel model = MainModel();
    return ScopedModel<MainModel>(
     // model:MainModel(),
        model:model,
        child:MaterialApp(
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
         home:
           _model.user==null? SignIn():TabsScreen(),

        //initialRoute: '/',
        routes: {
          TabsScreen.routeName: (ctx) => TabsScreen(),
          CategoryMaidsScreen.routeName: (ctx) => CategoryMaidsScreen(),
          MainRegister.routeName:(ctx)=>MainRegister(),
          UserRegister.routeName:(ctx)=>UserRegister(),
          Signup.routeName:(ctx)=>Signup(),

         },

        onGenerateRoute: (settings){
          print(settings.arguments);
          return MaterialPageRoute (builder: (ctx) => ProfileScreen(model));
        },
         onUnknownRoute: (RouteSettings settings) {
          return  MaterialPageRoute(
            //  builder: (ctx) => TabsScreen(addUser),
            builder: (ctx) =>MainRegister(),

          );
        }
    ),);


  }
}



