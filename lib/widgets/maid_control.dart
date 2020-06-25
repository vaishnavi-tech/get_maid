import 'package:flutter/material.dart';
import 'package:get_maid/screens/maid_input.dart';
class MaidControl extends StatelessWidget {
  final Function addMaid;
  MaidControl(this.addMaid);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) =>MaidInput(addMaid)
        )),
         // addMaid({'title':'xyz'});

      child:
       Text('REGISTER HERE'),

    );
  }
}
