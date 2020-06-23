import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
final Function addMaid;
ProfileScreen(this.addMaid);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String titleValue;
  String address;
  String gender;
  double age;
  double phonenumber;
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
             child: Text('save changes'),
             onPressed: () {
               final Map< String, dynamic> maid = {
                 'title': titleValue,
                 'address':address,
                'age' :age,
               'gender':gender,
               'phnno':phonenumber
               };
               widget.addMaid(maid);
             })
      ],
    ),
    );
  }
}
