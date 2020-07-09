import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class SettingsScreen  extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();

}

class _SettingsScreenState extends State<SettingsScreen> {
  final Map<String, dynamic> _formData = {
    'emailNotification':false,


    'pushNotifications': false
  };
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
     appBar : AppBar(title : Text('settings'),
     ),
      drawer: MainDrawer(),
     body : Container(
       color: Colors.black,
       child: Theme(
         data: Theme.of(context).copyWith(
           brightness: Brightness.dark,
           primaryColor: Colors.purple,
         ),
         child: DefaultTextStyle(
           style: TextStyle(
             color: Colors.white,
           ),
           child: SingleChildScrollView(
             padding: const EdgeInsets.all(32.0),
             child: Column(
               children: <Widget>[

                 ListTile(
                   title: Text(
                     "Languages",
                     style: TextStyle(
                       color: Colors.white
                     )
                   ),
                   trailing: Icon(
                     Icons.keyboard_arrow_right,
                     color: Colors.grey.shade400,
                   ),
                   onTap: () {},
                 ),

                 SwitchListTile(
                   title: Text(
                     "Email Notifications",
                     style:  TextStyle(
                         color: Colors.white
                     )
                   ),

                   value:  _formData['emailNotification'],
                   onChanged: ( bool value) {
                     setState(() {
                       _formData['emailNotification']=value;
                     });
                   },
                 ),
                 SwitchListTile(
                   title: Text(
                     "Push Notifications",
                     style: TextStyle(
                         color: Colors.white
                     )
                   ),

                   value:  _formData['pushNotifications'],
                   onChanged: ( bool value) {
                     setState(() {
                        _formData['pushNotifications']=value;
                     });
                   },
                 ),

               ],
             ),
           ),
         ),
       ),
     ) , );



  }
}
