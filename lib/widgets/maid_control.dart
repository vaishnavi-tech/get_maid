import 'package:flutter/material.dart';
class MaidControl extends StatelessWidget {
final  Function addMaid;
  MaidControl(this.addMaid);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
      addMaid({'title':'xyz'});
      },
      child: Text('add maids'),
    );

  }
}
