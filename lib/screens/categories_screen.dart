import 'package:flutter/material.dart';
import '../dummy_data.dart';
//import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Maidlist> maidlist = [

    Maidlist(id: 'c1',
        title: 'Gardener',
        minimum_salary: 3000,
        maximum_salary: 20000,
        color : Colors.cyanAccent,
        fontSize : FontWeight.bold
    ),
    Maidlist(id: 'c2',
        title: 'Babysitter',
        minimum_salary: 5000,
        maximum_salary: 25000,
        color : Colors.purple,
        fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c3',
        title: 'Cook',
        minimum_salary: 4000,
        maximum_salary: 50000,
        color : Colors.deepPurple,
        fontSize : FontWeight.bold
    ),
    Maidlist(id: 'c4',
        title: 'Home Cleaner',
        minimum_salary: 2500,
        maximum_salary: 25000,
        color : Colors.blueAccent,
        fontSize : FontWeight.bold
    ),
    Maidlist(id: 'c5',
        title: 'Elder Caretaker',
        minimum_salary: 6000,
        maximum_salary: 200000,
        color : Colors.blue,
        fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c6',
        title: 'Driver',
        minimum_salary: 3000,
        maximum_salary: 30000,
        color : Colors.lightBlue,
      fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c7',
        title: 'Laundry',
        minimum_salary: 3000,
        maximum_salary: 30000,
       color : Colors.deepPurple,
        fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c8',
        title: 'One Day Household Service',
        minimum_salary: 3000,
        maximum_salary: 30000,
        color : Colors.deepPurpleAccent,
        fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c9',
        title: 'Daily Household Worker',
        minimum_salary: 3000,
        maximum_salary: 30000,
        color : Colors.lightBlueAccent,
        fontSize : FontWeight.bold
    ),
    Maidlist(
        id: 'c10',
        title: 'nursing',
        minimum_salary: 3000,
        maximum_salary: 30000,
        color : Colors.red,
        fontSize : FontWeight.bold
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
              child: Text('Service provided by maids'),),),
        ),
        Card(
        child: Column(children: maidlist.map((ml) {
          return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child:Text(ml.title),
                  ),
            Column( children: <Widget>[
            Text('Range of salary is'),
            Text(ml.minimum_salary.toString(),),
            Text('to'),
            Text(ml.maximum_salary.toString(),),
            ],),

                ],
              ),
          );
        }).toList(),))
      ],),
    );
  }
}