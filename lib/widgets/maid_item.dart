import 'package:flutter/material.dart';
import 'maids/maid.dart';
import '../widgets/maid_control.dart';

class MaidItem extends StatelessWidget{
  final List<Map<String,dynamic>> maids;
 final Function addMaid;
 MaidItem( this.maids,this.addMaid);

  @override
  Widget build(BuildContext context) {
    print('[MaidItem Widget] build()');
    return Column(
          children: [
            Container(
               margin: EdgeInsets.all(10.0),
              child: MaidControl(addMaid,),
    ),
         Expanded(child: Maids(maids))
          ],
    );
  }
}