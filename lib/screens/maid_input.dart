import 'package:flutter/material.dart';
import '../screens/category_maids_screen.dart';
class MaidInput extends StatefulWidget {
  static const routeName = '/add';
  final Function addMaid;
  MaidInput(this.addMaid);
  @override
  _MaidInputState createState() => _MaidInputState();
}

class _MaidInputState extends State<MaidInput> {
  String titleValue;
  String address;

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar : AppBar(
        title : Text('register'),
   ),
      body :Container(
         margin: EdgeInsets.all(10.0),
        child:ListView(
         children: <Widget>[
             TextField(
            decoration: InputDecoration(labelText: 'ENTER YOUR  FULL NAME ',),
           onChanged: (String value){
          setState(() {
           titleValue= value;
         });
    },
  ),
           TextField(
             maxLines: 3,
             decoration: InputDecoration(labelText: ' ENTER YOUR ADDRESS',),
             onChanged: (String value){
               setState(() {
                 address= value;
               });
             },
           ),
           RaisedButton(
              child: Text('save '),
  onPressed: () {
  final Map< String, dynamic> maid = {
  'title': titleValue,
    'address':address,
  };
  widget.addMaid(maid);
  Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
  })
  ],
  ),
  ),
  );
}
}

