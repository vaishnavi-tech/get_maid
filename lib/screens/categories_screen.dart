import 'package:flutter/material.dart';
import 'package:get_maid/dummy_data.dart';
import 'package:get_maid/widgets/category_item.dart';
//import './category_item.dart';



@override
Widget build(BuildContext context) {
  return GridView(
    padding: const EdgeInsets.all(25),
    children: DUMMY_CATEGORIES
        .map(
          (catData) =>
          CategoryItem(
            catData.id,
            catData.title,
            catData.color,
          ),
    )
        .toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    ),
  );
}