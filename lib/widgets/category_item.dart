

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
  
  @override
  Widget build(BuildContext context ) {
    return InkWell(
      /*onTap:  () => {
      Navigator.of(context).pushNamed(
      CategoryMaidsScreen.routeName,
      arguments: {
      'title':title
      },
      ),
      },*/
       onTap:()=>
       { Navigator.push(
         context,
         MaterialPageRoute(
             builder: (context) =>
                 CategoryMaidsScreen(title:title)
         ),
       )
       },

        splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,

       children:<Widget> [
            Container(

              margin: EdgeInsets.all(2),
              width:400,
              height:130 ,
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
         border: Border.all(color: Colors.black,width: 3.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: NetworkImage(imageUrl),),


         ),
            ),
        
    ],
      ),

    );
  }
}