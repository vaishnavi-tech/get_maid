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
  String gender;
  double age;
  double phonenumber;

@override
Widget build(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
  final double targetPadding = deviceWidth - targetWidth;
  return Scaffold(
      appBar : AppBar(
        title : Text('register'),
   ),
      body :Container(
         margin: EdgeInsets.all(10.0),
        child:ListView(
          padding: EdgeInsets.symmetric(horizontal: targetPadding /2),
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
           TextField(
             decoration: InputDecoration(labelText: 'GENDER'),
             onChanged: (String value){
               setState(() {
                 gender= value;
               });
             },
           ),
           TextField(
             decoration: InputDecoration(labelText: 'AGE',),
             keyboardType: TextInputType.number,
             onChanged: (String value){
               setState(() {
                 age=double.parse(value);
               });
             },
           ),
           TextField(
             decoration: InputDecoration(labelText: 'PHONE NUMBER',),
             keyboardType: TextInputType.number,
             onChanged: (String value){
               setState(() {
                 phonenumber=double.parse(value);
               });
             },
           ),
           RaisedButton(
              child: Text('save '),
  onPressed: () {
  final Map< String, dynamic> maid = {
  'title': titleValue,
    'address':address,
    'gender':gender,
    'age' :age,
    'phnno':phonenumber
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

