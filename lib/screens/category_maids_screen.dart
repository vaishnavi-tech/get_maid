import 'package:flutter/material.dart';
import '../widgets/maid_item.dart';

class CategoryMaidsScreen  extends StatelessWidget {
  final List<Map<String, dynamic>> maids;
  final Function addMaid;
  CategoryMaidsScreen (this.maids,this.addMaid);
  static const routeName = '/categories-maids';


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
    // final categoryId = routeArgs['id'];
    // final maid = MaidInput.where((maids) {
      // return maids.category.contains(categoryTitle);
    //}).toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(categoryTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed: () => debugPrint('Item searched'),),
        ],
      ),
      body: MaidItem(maids,categoryTitle, addMaid,),

    );
  }
}
