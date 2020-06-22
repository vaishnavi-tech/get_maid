import 'package:flutter/material.dart';
import 'categories_screen.dart';
class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed:() {
            Navigator.pushReplacement(
              context, MaterialPageRoute(
                builder: (BuildContext context) =>CategoriesScreen()),
            );
          } ,
          child: Text('LOGIN'),
        ),
      ),
    );
  }
}
