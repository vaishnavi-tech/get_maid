import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './dummy_data.dart';
//import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Maidlist> maidlist = [

    Maidlist(id: 'c1',
        title: 'Gardener',
       // minimum_salary: 3000,
       // maximum_salary: 20000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(id: 'c2',
        title: 'Babysitter',
       // minimum_salary: 5000,
        //maximum_salary: 25000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c3',
        title: 'Cook',
        //minimum_salary: 4000,
        //maximum_salary: 50000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(id: 'c4',
        title: 'Home Cleaner',
        //minimum_salary: 2500,
       // maximum_salary: 25000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(id: 'c5',
        title: 'Elder Caretaker',
        //minimum_salary: 6000,
        //maximum_salary: 200000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c6',
        title: 'Driver',
        //minimum_salary: 3000,
       // maximum_salary: 30000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c7',
        title: 'Laundry',
       // minimum_salary: 3000,
      //  maximum_salary: 30000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c8',
        title: 'One Day Household Service',
        //minimum_salary: 3000,
       // maximum_salary: 30000,
      person_involved: 'Depends on the Maid',

    ),
    Maidlist(
        id: 'c9',
        title: 'Daily Household Worker',
       // minimum_salary: 3000,
       // maximum_salary: 30000,
      person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c10',
        title: 'nursing',
        //minimum_salary: 3000,
       // maximum_salary: 30000,
        person_involved: 'Depends on the Maid',

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Maid App'),
      ),
      body: Column(children: <Widget>[
        Card(

          child: Container(
            width: double.infinity,
            child: Card(
              shadowColor: Colors.blueGrey,
              color: Colors.cyanAccent,
              child: Text('Service provided by maids', style : TextStyle(fontWeight : FontWeight.w200, backgroundColor:
              Colors.deepPurple , fontFamily: 'Anton' )),),),
        ),
        Card(
        child: Column(children: maidlist.map((ml) {
          return Container
            (
           height: 300,
            child : SingleChildScrollView(
            child:Row
            (children: <Widget>[
                  Container(
                    margin : EdgeInsets.symmetric(vertical: 15 , horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple ,width: 1.5 ),
                    ),
                    padding: EdgeInsets.all(15) ,
                    child:Text(ml.title ,
                      style: TextStyle( fontWeight : FontWeight.bold,
                        fontSize : 20,
                        color : Colors.green,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(
                  'Number of Persons Involved',
                style : TextStyle(fontWeight: FontWeight.w200 , fontFamily: 'Anton' , color: Colors.deepPurpleAccent)
              ),
                Text(
                        ' In Work ' ,
                    style : TextStyle(fontWeight: FontWeight.w200 , fontFamily: 'Anton' , color: Colors.deepPurpleAccent)
                ),
              Text(
              ml.person_involved,
                  style : TextStyle(fontWeight: FontWeight.w100 , fontFamily: 'RobotoCondensed' , color: Colors.indigo)
              ),
            ],),
         
                ],
              ),
          ));
        }).toList(),))
      ],),
    );
  }
}

