import 'package:flutter/material.dart';
import 'category_maids_screen.dart';


class ProfileScreen extends StatefulWidget {
  static const routeName = '/add';
  //final  String category;
  final Function addUser;
  ProfileScreen( this.addUser);
  @override
  _profileScreen createState() =>   _profileScreen();
}
class   _profileScreen extends State< ProfileScreen > {
  final Map<String, dynamic> _formData = {
    'title': null,
    'address': null,
    'gender': null,
    'age': null,
    'phoneNumber': null,
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
// ignore: missing_return
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth> 550.0 ? 500.0 : deviceWidth;
    final double targetPadding = deviceWidth - targetWidth;
    targetPadding;




 //  var category;

    Widget _buildTitleTextField() {
      return TextFormField(
        decoration: InputDecoration(labelText: 'ENTER YOUR  FULL NAME '),
        validator: (String value) {
          if (value.isEmpty || value.length < 5) {
            return 'Name is required and should be 5+ character long';
          }
        },
        onSaved: (String value) {
          _formData['title'] = value;
        },
      );
    }

    Widget _buildAddressTextField() {
      return TextFormField(
        maxLines: 3,
        decoration: InputDecoration(labelText: ' ENTER YOUR ADDRESS'),
        validator: (String value) {
          if (value.isEmpty || value.length < 10) {
            return 'Address  is required and should be 10+ character long';
          }
        },
        onSaved: (String value) {
          _formData['address'] = value;
        },
      );
    }

    Widget _buildGenderTextField() {
      return TextFormField(
        decoration: InputDecoration(labelText: 'GENDER'),
        validator: (String value) {
          if (value.isEmpty || value.length < 4) {
            return 'gender is required and should be 3+ character long';
          }
        },
        onSaved: (String value) {
          _formData['gender'] = value;
        },
      );
    }

    Widget _buildAgeTextField() {
      return TextFormField(
        decoration: InputDecoration(labelText: 'AGE'),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty ||
              !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
            return 'Age is required and should be a number.';
          }
        },
        onSaved: (String value) {
          _formData['age'] = double.parse(value);
        },
      );
    }

    Widget _buildPhoneTextField() {
      return TextFormField(
        decoration: InputDecoration(labelText: 'PHONE NUMBER'),
        validator: (String value) {
          if (value.isEmpty ||
              !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
            return 'phone number is required and should be number';
          }
        },
        onSaved: (String value) {
          _formData['phoneNumber'] = double.parse(value);
        },
      );
    }
  }
}
