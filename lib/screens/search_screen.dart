import 'package:flutter/material.dart';
import 'profile_screen.dart';

class SearchScreen  extends StatelessWidget {
  final List<Map<String, dynamic>> User;
  final Function addUser;
  SearchScreen (this.User,this.addUser);
  static const routeName = '/categories-maids';


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    //final maid = MaidInput.where((maids) {
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
      body: UserItem(User,categoryTitle, addUser,),

    );
  }
}

