import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_maid/model/category.dart';
import '../screens/category_maids_screen.dart';

class CategoryItem extends StatelessWidget {
  final List<Category> categories = [];
  final  String id;
  final String title;
  final String description;
  final String imageUrl;

  CategoryItem(this.id , this.title , this.description, this.imageUrl);
  
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
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,

       children:<Widget> [
            Container(
              margin: EdgeInsets.all(2),
              width: 400,
              height:140 ,
             padding: const EdgeInsets.all(30),
             child:
             Text(
              title,
              style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway'
          ),
            ),
        decoration: BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
           image: NetworkImage(imageUrl),),

         // borderRadius: BorderRadius.circular(3),
          //shape: BoxShape.rectangle,
          //color: Colors.black,
          //backgroundBlendMode: BlendMode.darken,

         ),
            ),
    ],
      ),

    );
  }
}