import 'package:flutter/material.dart';
import '../ui_elements/title_default.dart';
import 'address.dart';
//import 'age.dart';
//import 'phoneNumber.dart';
//import 'gender.dart';
class MaidCard extends StatelessWidget {
  final Map<String,dynamic> maid;
  final int maidIndex;
  MaidCard(this.maid,this.maidIndex);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Column(
        children: <Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
              decoration: BoxDecoration(
                color: Colors.limeAccent,
              ),
              child:Icon(Icons.account_circle,size: 40.0),
            ),
          SizedBox(width: 8.0),
           Column(
            children: <Widget>[
              TitleDefault(maid['title']),
              Address(maid['address']),
              //  Gender(maid['gender']),
             // Age(maid['age'].toString()),
              //PhoneNumber(maid['phoneNumber'].toString()),
        ],
        ),
       ],
       ),
          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  iconSize: 40.0,
                  color: Theme.of(context).accentColor,
                  icon: Icon(Icons.info),
                  onPressed: ()  => Navigator.pushNamed(context, '/maid/'+maidIndex.toString()),
                ),
                IconButton(
                  iconSize: 40.0,
                  color: Theme.of(context).accentColor,
                  icon: Icon(Icons.save),
                  onPressed: ()  => Navigator.pushNamed(context, '/maid/'+maidIndex.toString()),
                ),
              ],
          ),
      ],
      ),
    );
  }
}
