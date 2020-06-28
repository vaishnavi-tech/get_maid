import 'package:flutter/material.dart';
import 'package:get_maid/screens/maid_input.dart';
class MaidControl extends StatelessWidget {
  final  String category;
  final Function addMaid;
  MaidControl(this.addMaid,this.category);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) =>MaidInput(category,addMaid,)
        )),
         // addMaid({'title':'xyz'});

      child:
       Text('REGISTER HERE'),

    );
  }
}
