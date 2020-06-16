import 'package:flutter/material.dart';
//import './model/category.dart';
import 'package:flutter/foundation.dart';

class Maidlist{
   final String id;
  // ignore: non_constant_identifier_names
 final  String title;
  // ignore: non_constant_identifier_names
 /// String City;
  // ignore: non_constant_identifier_names
  //String State;
  // ignore: non_constant_identifier_names
  //String person_involved;
  // ignore: non_constant_identifier_names
  final double minimum_salary;
  // ignore: non_constant_identifier_names
   final  double maximum_salary;


  Maidlist({
    @required this.id,
    // ignore: non_constant_identifier_names
    @required  this.title,
    // ignore: non_constant_identifier_names
    //this.City,
    // ignore: non_constant_identifier_names
    //this.State,
    // ignore: non_constant_identifier_names
    //this.person,
    // ignore: non_constant_identifier_names
    @required this.minimum_salary,
    // ignore: non_constant_identifier_names
    @required this.maximum_salary, color, FontWeight fontSize
  } );



}