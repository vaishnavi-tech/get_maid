import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'package:get_maid/screens/categories_screen.dart';
import 'categories_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';
import 'notifications_screen.dart';



class TabsScreen extends StatefulWidget {

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
        'page' :   ProfileScreen(),
        'title':'Profile',
      },
       {
         'page' :  NotificationsScreen(),
         'title':'Notifications',
       },
        {
          'page' : SearchScreen(),
          'title':'Saved',
        },
  ];
   int _selectPageIndex = 0;
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
