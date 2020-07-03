import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
         //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
             // padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.limeAccent,
              ),
              child:Icon(Icons.account_circle,size: 45.0),
            ),
          SizedBox(width: 8.0),
           Column(
            children: <Widget>[
             Container(
              padding: EdgeInsets.all(10.0),
               child :Text(
                 maid['name'].toString(),
                style: TextStyle(
              color: Colors.black,
               fontSize: 26.0,
             fontWeight: FontWeight.bold,
              fontFamily: 'Lato'),
             )
            ),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2.5),
                         child: Text(maid['address'].toString(),
                         style: TextStyle(
                           fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway'),
                 ),
                 ),
               Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                Container(
                 padding:EdgeInsets.all(10.0) ,
                  child:  Text('gender:',
                  style: TextStyle(
                    //  fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
                Container(
                 padding: EdgeInsets.all(10.0) ,
                 child: Text(maid['gender'].toString()),
               ),
                 ],
               ),
            Row(
    // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(
                padding:EdgeInsets.all(10.0) ,
                child:  Text('Age:',
                  style: TextStyle(
                     // fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
              Container(
                padding:EdgeInsets.all(10.0) ,
                child: Text(maid['age'].toString()),
              ),
              ],
            ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Container(
                 padding:EdgeInsets.all(10.0) ,
                 child:  Text('Contact:',
                  style: TextStyle(
                      //fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
                Container(
                 padding:EdgeInsets.all(10.0) ,
                 child: Text(maid['phoneNumber'].toString()),
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
                  width: 120.0,
                  height: 60.0,
                  padding: EdgeInsets.all(20.0),

                  color: Colors.blue,
                  child: Text('Apply',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway'
                    ),
                   // textAlign:TextAlign.center ,

                  ),
                ),
                Container(
                  height:80.0,
                  width: 80.0,
                  padding: EdgeInsets.all(20.0),

                  color: Colors.white,

                ),
                Container(
                  width: 120.0,
                  height: 60.0,
                  padding: EdgeInsets.all(20.0),

                 color: Colors.pink,
                  child: Text('save',
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway'
                    ),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*ButtonBar(
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
),*/