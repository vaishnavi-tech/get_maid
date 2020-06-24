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
  final Map< String, dynamic> maid = {
  'title': titleValue,
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

