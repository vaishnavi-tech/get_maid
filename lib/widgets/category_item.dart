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
  final String URL;

  CategoryItem(this.id , this.title ,this.color, this.description, this.URL);
  
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
         //border: BoxBorder(Colors.black),
        gradient: LinearGradient(
        colors:[
          color.withOpacity(0.7),
         color,
         ],
         begin: Alignment.center,
         end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(3),
          shape: BoxShape.rectangle,
          color: Colors.black,
          backgroundBlendMode: BlendMode.darken,

         ),
            ),
        //ButtonBar(
          //alignment:(MainAxisAlignment.end) ,
            //children: <Widget>[
              //IconButton(
                //  icon: Icon(Icons.save),
                  //color: Colors.red,
                  //onPressed:() {} )
            //],
        //)
    ],
      ),

    );
  }
}