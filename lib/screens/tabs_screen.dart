import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/connected.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/main_drawer.dart';
import 'package:get_maid/screens/categories_screen.dart';
import 'categories_screen.dart';
import 'profile_screen.dart';
import 'saved_screen.dart';
import '../scoped-models/main.dart';



class TabsScreen extends StatefulWidget {


  static const routeName = '/tab';
  final MainModel model;
  TabsScreen({@required this.model});
  @override
  _TabsScreenState createState() => _TabsScreenState(
  );
}

class _TabsScreenState extends State<TabsScreen> {



  List<Map<String, Object>> _pages = [];
   int _selectPageIndex = 0;

  //static MainModel get model => null;



  void _selectPage(int index){
  setState(() {
    _selectPageIndex = index;
  });
  }
  @override
  Widget build(BuildContext context)  {
    return  Scaffold(
         appBar: AppBar(
          title: Text(_pages[_selectPageIndex]['title']),
    ),
      drawer: MainDrawer(),
      body: _pages[ _selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
       unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.home),
            title: Text('Home'),
          ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),

        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.save),
          title: Text('Saved'),
        ),
      ],
       ),
     );
  }

   @override
  void initState() {

    print(widget.model);
     _pages = [
       {
         'page' : CategoriesScreen(),
         'title':'Home',
       },
       {
         'page' :    ProfileScreen(widget.model),
         'title':'Profile',
       },
       {
         'page' : SavedScreen(),
         'title':'Saved',
       },
     ];
  }
}
