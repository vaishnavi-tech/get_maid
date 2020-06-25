import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class MaidEntry extends StatefulWidget {
  static const routeName = '/register';
 final Function addMaid;
  MaidEntry(this.addMaid);
  @override
  _MaidEntryState createState() => _MaidEntryState();
}

class _MaidEntryState extends State<MaidEntry> {
  String titleValue;
  String address;
  String gender;
  double age;
  double phonenumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          title : Text('register'),
     ),
       drawer: MainDrawer(),
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
          TextField(
            maxLines: 3,
            decoration: InputDecoration(labelText: 'ADDRESS',),
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
                  'age' :age,
                  'gender':gender,
                  'phnno':phonenumber
                };
                widget.addMaid(maid);
                //Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
              })
        ],
      ),
    ),
    );
  }
}
