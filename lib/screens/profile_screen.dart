import 'package:flutter/material.dart';
import '../screens/category_maids_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/add';
  final Function addUser;
  ProfileScreen(this.addUser);
  @override
  _profileScreen  createState() => _profileScreen();
}
class _profileScreen  extends State<ProfileScreen> {
  final Map<String, dynamic> _formData = {
    'title': null,
    'address': null,
    'age': null,
    'phoneNumber': null,

  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;
    return Scaffold(
      appBar : AppBar(
        title : Text('register'),
      ),
      body : GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },

        child:
        Container(
          margin: EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child:ListView(
              padding: EdgeInsets.symmetric(horizontal: targetPadding /2),
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'ENTER YOUR  FULL NAME ',),
                  validator: (String value){
                    if (value.isEmpty ||value.length < 5) {
                      return 'Name is required and should be 5+ characters long.';
                    }
                  },
                  onSaved: (String value) {
                    _formData['title'] = value;
                  },
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(labelText: ' ENTER YOUR ADDRESS',),
                  validator: (String value){
                    if (value.isEmpty ||value.length < 10) {
                      return 'Address is required and should be 10+ characters long.';
                    }
                  },
                  onSaved: (String value) {
                    _formData['address'] = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'GENDER'),
                  validator: (String value){
                    if (value.isEmpty ||value.length < 3) {
                      return 'Gender is required and should be 3+ characters long.';
                    }
                  },
                  onSaved: (String value) {
                    _formData['gender']= value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'AGE',),
                  keyboardType: TextInputType.number,
                  validator: (String value){
                    if (value.isEmpty || !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
                      return 'Age is required and should be number';
                    }
                  },
                  onSaved: (String value) {
                    _formData['age'] = double.parse(value);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'PHONE NUMBER',),
                  keyboardType: TextInputType.number,
                  validator : (String value){
                    if (value.isEmpty ||value.length < 10) {
                      return 'Phone number is required and should not be less than 10 degits.';
                    }
                  },
                  onSaved: (String value) {
                    _formData['phoneNumber'] =  double.parse(value);
                  },
                ),
                RaisedButton(
                    child: Text('save '),
                    onPressed: () {
                      if(!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();

                      widget.addUser(_formData);
                      Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//class ProfileScreen extends StatelessWidget {
  //@override
//Widget build(BuildContext context) {
   // return Container(
     // child: Center(child:
       //Text(
        //'Enter Your Name',
    //),
   // return Center(child: Text('profile'),
   // ));
  //}
//}
