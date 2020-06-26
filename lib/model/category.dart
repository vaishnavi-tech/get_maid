import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String description;
  //final String imageUrl;


  const Category({
    @required this.id,
    this.color,
    @required this.description,
    @required this.title,
    //@required this.imageUrl,


  });
}