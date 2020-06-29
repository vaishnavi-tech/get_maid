import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  static const routeName = '/register';
  //final Function addMaid;
  // MaidInput( this.addMaid);
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailTypeController = TextEditingController();
  TextEditingController nameTypeController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  TextEditingController phoneNumberTypeController = TextEditingController();
  void _submitForm() {
    //if(!_formKey.currentState.validate()) {
    //return;
    //}
    print("===================================================");
    print(nameTypeController.text);
    print(emailTypeController.text);
    print(addressTypeController.text);
    print(phoneNumberTypeController.text.toString());
    _formKey.currentState.save();
    //Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          centerTitle: true,
        ),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
    child: Form(
    key: _formKey,
    child: ListView(
    children: <Widget>[

    TextFormField(
    controller: nameTypeController,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    labelText: "Full Name",
    ),
    //    keyboardType: TextInputType.number,
    ),
    TextFormField(
    controller: addressTypeController,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    labelText: "Address",
    ),
    //   keyboardType: TextInputType.number,
    ),
    TextFormField(
    controller: phoneNumberTypeController,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(15.0),
    ),
    errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15.0),
    ),
    labelText: "Phone Number",
    ),
    keyboardType: TextInputType.number,
    ),
    ],),);
  }
}
