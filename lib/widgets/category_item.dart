import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_maid/model/category.dart';
import '../screens/category_maids_screen.dart';

class CategoryItem extends StatelessWidget {
  final List<Category> categories = [];
  final  String id;
  final String title;
  final Color color;
  final String description;

  CategoryItem(
      this.id ,
      this.title ,
      this.color,
      this.description);
  
  void selectCategory( BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      CategoryMaidsScreen.routeName,
      arguments: {
        'id':id,
        'title': title,
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  () => selectCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
      children:<Widget> [
            Container(
             padding: const EdgeInsets.all(15),
             child:
             Text(
              title,
              style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'
          ),
            ),
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors:[
          color.withOpacity(0.7),
         color,
         ],
         begin: Alignment.topLeft,
         end: Alignment.bottomRight ,
          ),
          borderRadius: BorderRadius.circular(15),
         ),
            ),
    ],
      ),
    );
  }
}