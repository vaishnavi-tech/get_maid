import 'package:flutter/material.dart';
import '../widgets/maid_item.dart';


class CategoryMaidsScreen  extends StatelessWidget {
  final List<Map<String, dynamic>> maids;
  CategoryMaidsScreen (this.maids);
  static const routeName = '/categories-maids';
 // final String categoryId;
  //final String categoryTitle;
  //CategoryMaidsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
   // final categoryId = routeArgs['id'];
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.cyan,
            title: Text(categoryTitle),
     ),
       body: MaidItem(maids),

    );
    }
   }
