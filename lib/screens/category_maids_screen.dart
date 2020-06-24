import 'package:flutter/material.dart';
import '../main.dart';
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

//  @override
  //State<StatefulWidget> createState() {
    /// TODO: implement createState
    //throw UnimplementedError();
  //}

 // void setState(Null Function() param0) {}
   //}
//abstract class _MyAppState extends State<MyApp>{
  //List<Map<String,dynamic>>_maids=[];
  //void _addMaid(Map<String , dynamic>maid){
    //setState((){
      //_maids.add(maid);
    //});
    //print(_maids);
  //}
//}