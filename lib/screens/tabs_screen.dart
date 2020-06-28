import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'package:get_maid/screens/categories_screen.dart';
import 'categories_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';
import 'notifications_screen.dart';



class TabsScreen extends StatefulWidget {
  final String category;
  final Function addUser;
  TabsScreen(this.addUser,this.category, this.User);
 final List<Map<String, dynamic>> User;
 
  static const routeName = '/tab';
  @override
  _TabsScreenState createState() => _TabsScreenState(
  );
}

class _TabsScreenState extends State<TabsScreen> {
   final List<Map<String, Object>> _pages = [
     {
       'page' : CategoriesScreen(),
       'title':'Home',
     },
      {
        'page' :   ProfileScreen(category, addUser),
        'title':'Profile',
      },
       {
         'page' :  NotificationsScreen(),
         'title':'Notifications',
       },
        {
          'page' : SearchScreen(adUser , User),
          'title':'Saved',
        },
  ];
   int _selectPageIndex = 0;

   static List<Map<String, dynamic>> maids;

  static Function get addUser => null;

  static get category => null;
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
          icon: Icon(Icons.notifications),
          title: Text('Notifications'),
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
}
