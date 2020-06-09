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
            title: Text(categoryTitle),
     ),
       body: Center(
           child: Text(
          'list of maids',
         ),
       ),
      );
    }
   }
