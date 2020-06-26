import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/ui_elements/title_default.dart';
import '../widgets/maids/address.dart';

class MaidPage extends StatelessWidget {
  final String title;
 final String address;
   final String gender;
   final double age;
   final double phonenumber;
  MaidPage(
      this.title,
      this.address,
      this.gender,
      this.age,
      this.phonenumber,
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('back button pressed');
        Navigator.pop(context ,false);
        return Future.value(false);
          },
        child:Scaffold(
           appBar: AppBar(
             title: Text(title),
       ),
          body: Column(
             crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding:EdgeInsets.all(10.0) ,
               child: Image.asset('assets/maid.png'),
              ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                padding:EdgeInsets.all(10.0) ,
                 child:  Text(
                     'NAME:',
                   style: TextStyle(
                       fontSize: 26.0,
                       fontWeight: FontWeight.bold,
                       fontFamily: 'Raleway'),
                 ),
              ),
                Container(
                 padding:EdgeInsets.all(10.0) ,
                  child:  Address(title),
             ),
              ],
            ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding:EdgeInsets.all(10.0) ,
                      child:  Text(
                        'ADDRESS :',
                          style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway'),
    ),
                  ),
                  Container(
                    padding:EdgeInsets.all(10.0) ,
                    child:
                    TitleDefault(address),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding:EdgeInsets.all(10.0) ,
                      child:  Text('GENDER:',
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway'),
                      ),
                  ),
                  Container(
                    padding:EdgeInsets.all(10.0) ,
                    child:Text(gender),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding:EdgeInsets.all(10.0) ,
                      child:  Text('AGE:',
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway'),
                      ),
                  ),
                  Container(
                    padding:EdgeInsets.all(10.0) ,
                    child: Text(age.toString()),
                    // child: ,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding:EdgeInsets.all(10.0) ,
                      child:  Text('PHONE NUMBER:',
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway'),
                      ),
                  ),
                  Container(
                    padding:EdgeInsets.all(10.0) ,
                   child: Text(phonenumber.toString()),
                   // child: ,
                  ),
                ],
              ),
           Row(
             children: <Widget>[
               Container(
                 padding:EdgeInsets.all(10.0),
                 color: Theme.of(context).accentColor,
                 child: RaisedButton(
                   child: Text('BACK'),
                   onPressed: () => Navigator.pop(context ),
                 ),),
               SizedBox(width: 10.0,),
               Container(
                 padding:EdgeInsets.all(10.0),
                 color: Theme.of(context).accentColor,
                 child: RaisedButton(
                   child: Text('DELETE'),
                   onPressed: () => Navigator.pop(context ),
                 ),),
             ],
           )
            ],
      ),
    ),
    );
  }
}
