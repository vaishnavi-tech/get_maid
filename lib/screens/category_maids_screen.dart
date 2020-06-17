import 'package:flutter/material.dart';


class CategoryMaidsScreen  extends StatelessWidget {
  static const routeName = '/categories-maids';
 // final String categoryId;
  //final String categoryTitle;
  //CategoryMaidsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.cyan,
            title: Text(categoryTitle),
     ),
       body:  Column(
         children: <Widget>[
           Card(
             color: Colors.purpleAccent,
             child: Container(
               width: 80,
               //margin : FontWeight.bold,
               child: Text('list of maids' ),),
             elevation : 5,
           )
         ],

       ),
    );
    }
   }
