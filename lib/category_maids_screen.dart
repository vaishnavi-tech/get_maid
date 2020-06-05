import 'package:flutter/material.dart';


class CategoryMaidsScreen  extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  CategoryMaidsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
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
