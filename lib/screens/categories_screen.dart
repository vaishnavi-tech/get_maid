import 'package:flutter/material.dart';
import 'package:get_maid/dummy_data.dart';
//import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Maidlist> maidlist = [

    Maidlist(id: 'c1',
        title: 'Gardener',
       //minimum_salary: 3000,
        //maximum_salary: 20000,
        person_involved: 'Depends on the Maid',
    ),
    Maidlist(id: 'c2',
        title: 'Babysitter',
        //minimum_salary: 5000,
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
        //maximum_salary: 25000,
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
        //maximum_salary: 30000,
        person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c7',
        title: 'Laundry',
        //minimum_salary: 3000,
        //maximum_salary: 30000,
        person_involved: 'Depends on the Maid',
    ),
    Maidlist(
        id: 'c8',
        title: 'One Day Service',
        //minimum_salary: 3000,
        //maximum_salary: 30000,
        person_involved: 'Depends on the Maid'
    ),
    Maidlist(
        id: 'c9',
        title: 'Household Worker',
        //minimum_salary: 3000,
        //maximum_salary: 30000,
        person_involved: 'Depends on the Maid'
    ),
    Maidlist(
        id: 'c10',
        title: 'Nursing',
        //minimum_salary: 3000,
        //maximum_salary: 30000,
        person_involved: 'Depends on the Maid'
    ),

  ];

  @override
  Widget build(BuildContext context) {

    {
      return Scaffold(
        appBar: AppBar(
          title: Text('Get Maid App'),
        ),
        body : Column
          (
          children: <Widget>[
            Card(
              //child: SingleChildScrollView()
              child: Container(
                width: double.infinity,
                height: 35,
                child: Card(
                    shadowColor: Colors.blueGrey,
                    color: Colors.purpleAccent,
                    child: Text('Service provided by maids', style:TextStyle(fontWeight: FontWeight.w400 ,
                      fontFamily: 'RobotoCondensed' , color: Colors.deepPurpleAccent ,
                    )
                    )
                ),
              ),
            ),
            Container(
                height: 600,
                child: ListView
                  (children: maidlist.map((ml) {
                  return Card(
                    child:Row
                      (children: <Widget>[
                      Container(
                        margin : EdgeInsets.symmetric(vertical :15 , horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.5,

                          ),
                        ) ,
                        padding: EdgeInsets.all(15),
                        child:Text(ml.title , style:TextStyle(color:Colors.lightGreen ,
                          fontWeight: FontWeight.bold ,

                        )
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Number Of Persons Involved ',
                            style: TextStyle(fontWeight: FontWeight.w400 ,
                                fontFamily: 'RobotoCondensed',
                                color: Colors.purple),
                          ),

                          Text('In Work ',
                            style: TextStyle(fontWeight: FontWeight.w400 ,
                                fontFamily: 'RobotoCondensed',
                                color: Colors.purple),
                          ),
                          Text(ml.person_involved ,
                            style:TextStyle(fontWeight:FontWeight.w200 ,
                                color: Colors.black),
                          ),
                          //Text(ml.minimum_salary.toString(),),
                          //Text('To'),
                          //Text(ml.maximum_salary.toString(),),
                        ],),

                    ],
                    ),
                  );
                }).toList(),))
          ],),
      );
    }
  }

  container({Text child}) {

  }}