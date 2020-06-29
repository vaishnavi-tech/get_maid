import 'package:flutter/material.dart';
import 'maids/maid.dart';
import '../widgets/maid_control.dart';
import 'package:get_maid/screens//search_screen.dart';


class UserItem extends StatelessWidget {
  final List<Map<String, dynamic>> User;
  final String category;
  final Function addUser;

  UserItem(this.User, this.category, this.addUser);

  @override
  Widget build(BuildContext context) {
    print('[MaidItem Widget] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: MaidControl(addUser, category),
        ),
        Expanded(child: Maids(User, addUser))
      ],
    );
  }
}