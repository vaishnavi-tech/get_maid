import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String description;
  final String URL;



  const Category({
    @required this.id,
    this.color,
    @required this.description,
    this.URL,

    @required this.title,
  });
}