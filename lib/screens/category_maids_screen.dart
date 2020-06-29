import 'package:flutter/material.dart';
import '../widgets/maid_control.dart';
import '../widgets/maids/maid_card.dart';

class CategoryMaidsScreen  extends StatelessWidget {
  final List<Map<String, dynamic>> maids;
  final Function addMaid;
  CategoryMaidsScreen ([this.maids = const [],this.addMaid]);
  static const routeName = '/categories-maids';
  Widget _buildMaidList() {
    Widget maidCard ;
    if (maids.length > 0) {
      maidCard =
          ListView.builder(
            itemBuilder: (BuildContext context,int index) =>MaidCard(maids[index]['title'], index),
            itemCount: maids.length,
          );
    }  else {
      maidCard= Container();
    }
    return maidCard;
  }
 
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
   // final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(categoryTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed: () => debugPrint('Item searched'),),
        ],
      ),
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: MaidControl(addMaid,),
          ),
          Expanded(child:_buildMaidList())
        ],
      ),
    );
  }
}
