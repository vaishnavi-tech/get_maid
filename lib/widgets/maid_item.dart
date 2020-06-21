import 'package:flutter/material.dart';
import 'package:get_maid/widgets/maid_control.dart';
import '../model/maid.dart';


class MaidItem extends StatefulWidget{
 final Map<String, dynamic> startingMaid;
  MaidItem({this.startingMaid})
 {
   print('[MaidItem Widget] Constructor');
}
  @override
  State<StatefulWidget> createState() {
    print('[MaidItem Widget] createState()');
    return  _MaidItemState() ;
  }
}

class _MaidItemState extends State<MaidItem> {
  List<Map<String, dynamic>> _maids = [];
  @override
  void initState() {
    print('[MaidItem Widget] initState()');
    if(widget.startingMaid != null) {
      _maids.add(widget.startingMaid);
    }

    _maids.add(widget.startingMaid);
    super.initState();
  }
  @override
  void didUpdateWidget(MaidItem oldWidget) {
    print('[MaidItem Widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addMaid( Map<String, dynamic> maid) {
    setState(() {
      _maids.add(maid);
    });
    print(_maids);
  }
  @override
  Widget build(BuildContext context) {
    print('[MaidItem Widget] build()');
    return  Column( children: [
      Container(
      margin: EdgeInsets.all(10.0),
      child:MaidControl(_addMaid) ,
    ),
      Expanded(child:Maids(_maids))
    ],
    );
  }
}