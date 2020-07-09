import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/user_auth.dart';
class MaidCard extends StatelessWidget {
  final Map<String,dynamic> maid;
  final int maidIndex;
  MaidCard(this.maid,this.maidIndex);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.lightBlueAccent,
     shadowColor:Colors.lightBlue,
     margin: EdgeInsets.all(10),
     elevation: 4,
     child:Column(

        children: <Widget>[
        Row(
          children: <Widget>[

            Container(
              alignment:  Alignment.topLeft,


              padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
             // padding: EdgeInsets.all(15.0),
              child:Icon(Icons.account_circle,size: 45.0),
            ),
          SizedBox(width: 8.0),

           Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                                   alignment: Alignment.topLeft,


                      padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                      child :Text(
                        "Name: ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway'),
                      )
                  ),
                  Container(
                      alignment: Alignment.topLeft,



                      padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                      child :Text(
                        maid['name'].toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato'),
                      )
                  ),
                ]
               
              ),
              Row(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                        child :Text(
                          "Address: ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway'),
                        )
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                        child :Text(
                          maid['address'].toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato'),
                        )
                    ),
                  ]

              ),
               Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                  child:  Text('gender:',
                    textAlign: TextAlign.left,
                              style: TextStyle(
                     fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                 child: Text(maid['gender'].toString(),
                   textAlign: TextAlign.left,
                   style: TextStyle(
                       fontSize: 22.0
                   ),
                 ),
               ),
                 ],
               ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                child:  Text('Age:',
                  textAlign: TextAlign.left,
                  style: TextStyle(

                     fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                child: Text(maid['age'].toString(),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22.0,
                ),)
              ),
              ],
            ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                 child:  Text('Contact:',
                   textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                 child: Text(maid['phoneNumber'].toString(),
                   textAlign: TextAlign.left,
                   style: TextStyle(
                   fontSize: 22.0
                 ),),
             ),
            ],
           ),
        ],
        ),
       ],
       ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(

                  child:RaisedButton(
                    child:
                    Text('Save',
                      style:TextStyle
                        (color:Colors.black87,
                      fontSize: 20.0),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding:
                    EdgeInsets.symmetric(horizontal: 40.0, vertical:10.0),
                    color: Colors.green,
                      onPressed:()=> Customer.mysaved.add(maid),
                    textColor: Theme.of(context).primaryTextTheme.button.color,

                  )


                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
