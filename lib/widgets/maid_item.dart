import 'package:flutter/material.dart';
import '../model/maid.dart';

class MaidItem extends StatelessWidget{
  final List<Map<String, dynamic>> maids;

   MaidItem(this.maids);

  @override
  Widget build(BuildContext context) {
    print('[MaidItem Widget] build()');
    return  Column(
      children: [

      Expanded(child:Maids(maids))
    ],
    );
  }
}