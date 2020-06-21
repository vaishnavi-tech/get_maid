import 'package:flutter/material.dart';
class MaidControl extends StatelessWidget {
final  Function addMaid;
  MaidControl(this.addMaid);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
      addMaid({'id': 'id','name': 'xyz','age':'24','address':'abcd','gender':'x'});
      },
      child: Text('add maid'),
    );

  }
}
