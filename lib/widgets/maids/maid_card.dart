import 'package:flutter/material.dart';
import '../ui_elements/title_default.dart';
import 'address.dart';
class MaidCard extends StatelessWidget {
  final Map<String,dynamic> maid;
  final int maidIndex;
  MaidCard(this.maid,this.maidIndex);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: <Widget>[
          Container(
            child: TitleDefault(maid['title']),
          ),
         Address(maid['address']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                iconSize: 50.0,
                color: Theme.of(context).accentColor,
                icon: Icon(
                    Icons.info),
                onPressed: ()  => Navigator.pushNamed(context, '/maid/'+maidIndex.toString()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
