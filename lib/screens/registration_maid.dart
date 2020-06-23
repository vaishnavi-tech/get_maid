import 'package:flutter/material.dart';

class MaidEntry extends StatefulWidget {
  static const routeName = '/maidentry';
  @override
  _MaidEntryState createState() => _MaidEntryState();
}

class _MaidEntryState extends State<MaidEntry> {
  String titleValue;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      child:ListView(
        children: <Widget>[
      TextField(
         decoration: InputDecoration(labelText: 'NAME',),
         onChanged: (String value){
        setState(() {
          titleValue= value;
        });
      },
    ),
          RaisedButton(
              child: Text('save '),
              onPressed: () {

              })
        ],
      ),
    );
  }
}
