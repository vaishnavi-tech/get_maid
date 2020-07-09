import 'package:flutter/material.dart';
import 'package:get_maid/widgets/saved_maid_list.dart';
import '../model/user_auth.dart';



class SavedScreen  extends StatelessWidget {
  Widget _buildMaidList() {
    Widget maidCard;
    if(Customer.mysaved.length> 0) {
      maidCard = ListView.builder(
        itemBuilder: (BuildContext context,int index) =>SaveMaid(Customer.mysaved[index], index),
        itemCount:Customer.mysaved.length,
      );
    }
    else {
      maidCard = Container();
    }
    return maidCard;
  }
  @override
  Widget build(BuildContext context) {

    return _buildMaidList();

  }
}