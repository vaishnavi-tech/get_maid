import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_maid/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Maids jobs!!!'),
      ),
      body: GridView(
        padding:  const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((
            catData) => CategoryItem(
          catData.id,
            catData.title,
          catData.color,
          catData.description,
        ))
        .toList(),
          gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )


    ),
    );







    // Column(children: <Widget>[
        //Card(

          //child: Container(
            //width: double.infinity,
            //child: Card(
              //shadowColor: Colors.blueGrey,
              //color: Colors.cyanAccent,
              //child: Text('Service provided by maids'),),),
        //),
        //Card(
        //child: Column(children: maidlist.map((ml) {
          //return Card(
            //  child: Row(
              //  children: <Widget>[
                //  Container(
                  //  child:Text(ml.title),
                  //),
            //Column( children: <Widget>[
           // Text('Range of salary is'),
            //Text(ml.minimum_salary.toString(),),
            //Text('to'),
            //Text(ml.maximum_salary.toStrinG(),),
            //],),

              //  ],
              //),
          //);
        //}).toList(),))
      //],),
    //);
  }
}