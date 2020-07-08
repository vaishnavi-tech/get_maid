import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/maids/maid_card.dart';
class ProfileScreen extends StatefulWidget {
final MainModel model;
ProfileScreen(this.model);

  @override
  _ProfileScreenState createState() => new _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState(){
    print("coming here=============================");
    print(widget.model.authenticatedUser);
    widget.model.getCustomer();
    super.initState();
  }
  Widget _buildMaidList() {
    Widget maidCard;   //where is finaldata defined   //agar finaldata vaha hai toh yaha kaise karenge?import kar sakte kya usko
  //  ncoonnenceid
  /* if(finalData.length> 0) {
      maidCard = ListView.builder(
        itemBuilder: (BuildContext context,int index) =>MaidCard(finalData[index], index),
        itemCount: finalData.length,
      );
    }
    else {
      maidCard = Container();
    }
    return maidCard;*/
  }
  @override
  Widget build(BuildContext context) {

    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('profile'),
          ),

          body: _buildMaidList(),
        );
      },
    );
  }


}