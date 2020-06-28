import 'package:flutter/material.dart';
import '../screens/category_maids_screen.dart';
class MaidInput extends StatefulWidget {
  static const routeName = '/add';
  final  String category;
  final Function addMaid;
  MaidInput( this.category,this.addMaid);
  @override
  _MaidInputState createState() => _MaidInputState();
}
class _MaidInputState extends State<MaidInput> {
  final Map<String, dynamic> _formData = {
    'title': null,
    'address': null,
    'gender': null,
    'age': null,
    'phoneNumber': null
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var category;

 Widget _buildTitleTextField() {
   return TextFormField(
     decoration: InputDecoration(labelText: 'ENTER YOUR  FULL NAME '),
     validator: ( String value) {
         if (value.isEmpty || value.length < 5 ) {
         return 'Name is required and should be 5+ character long';
       }
     },
     onSaved: ( String value){
         _formData['title']=value;
     },
   );
 }
  Widget _buildAddressTextField() {
   return TextFormField(
     maxLines: 3,
     decoration: InputDecoration(labelText: ' ENTER YOUR ADDRESS'),
     validator: ( String value) {
       if (value.isEmpty || value.length < 10) {
         return 'Address  is required and should be 10+ character long';
       }
     },
     onSaved: ( String value) {
       _formData['address'] =value;
     },
   );
 }
  Widget _buildGenderTextField() {
   return TextFormField(
     decoration: InputDecoration(labelText: 'GENDER'),
     validator: ( String value) {
       if (value.isEmpty || value.length < 4) {
         return 'gender is required and should be 3+ character long';
       }
     },
     onSaved: ( String value) {
       _formData['gender'] =value;
     },
   );
  }
 Widget _buildAgeTextField() {
   return TextFormField(
     decoration: InputDecoration(labelText: 'AGE'),
     keyboardType: TextInputType.number,
     validator: ( String value) {
       if (value.isEmpty || !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
         return 'Age is required and should be a number.';
       }
     },
     onSaved: ( String value) {
       _formData['age'] = double.parse(value);
     },
   );
 }
 Widget _buildPhoneTextField() {
   return TextFormField(
     decoration: InputDecoration(labelText: 'PHONE NUMBER'),
     validator: ( String value) {
       if (value.isEmpty || !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
         return 'phone number is required and should be number';
       }
     },
     onSaved: ( String value) {
       _formData['phoneNumber'] =double.parse(value);
     },
   );
 }
 void _submitForm() {
   if(!_formKey.currentState.validate()) {
       return;
     }
     _formKey.currentState.save();
     widget.addMaid(_formData);
     Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName,arguments: {'title': category,});
 }
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
        child: Container(
         margin: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
         child:ListView(
          padding: EdgeInsets.symmetric(horizontal: targetPadding /2),
         children: <Widget>[
           _buildTitleTextField(),
           _buildAddressTextField(),
           _buildGenderTextField(),
           _buildAgeTextField(),
           _buildPhoneTextField(),
           RaisedButton(
             color: Theme.of(context).primaryColor,
              child: Text('save '),
               onPressed: _submitForm,
           )
  ],
  ),
        ),
  ),
      ),
  );
}
}

