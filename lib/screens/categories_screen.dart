import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_maid/widgets/dummy_data.dart';
//import 'file:///C:/Users/Prerana/Desktop/find%20my%20maid/get_maid/lib/widgets/dummy_data.dart';
import '../widgets/category_item.dart';
//import 'package:get_maid/screens/tabs_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Maids jobs!!!'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
            onPressed: () {},

          )
        ],
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
            maxCrossAxisExtent: 500,
            childAspectRatio: 5/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
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
//CategoriesScreen(){}