import 'package:flutter/material.dart';
import 'package:get_maid/screens/signin.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class UserRegister extends StatefulWidget {
  static const routeName = '/userRegister';


  @override
  _UserRegisterState createState() => _UserRegisterState();
}
class _UserRegisterState extends State<UserRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailTypeController = TextEditingController();
  TextEditingController nameTypeController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  TextEditingController phoneNumberTypeController = TextEditingController();
  TextEditingController ageTypeController = TextEditingController();
  TextEditingController genderTypeController = TextEditingController();
  void _submitForm()  async{
    _formKey.currentState.save();
    print(nameTypeController.text);
    print(emailTypeController.text);
    print(addressTypeController.text);
    print(phoneNumberTypeController.text.toString());

    final url= "https://get-maid-app.firebaseio.com/custmer.json";
    final response = await http.post(
      url,
      body: jsonEncode(
        {
          'name': nameTypeController.text,
          'address': addressTypeController.text,
          'email':emailTypeController.text,
          'phoneNumber':phoneNumberTypeController.text.toString(),
          'age':ageTypeController.text.toString().toString(),
        'gender':genderTypeController.text,

        },
      ),
    );
    print(json.decode(response.body));



    Navigator.pushReplacementNamed(context,SignIn.routeName);
  }


  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;
    return Scaffold(
        appBar: AppBar(
          title: Text("Customer Registration"),
          centerTitle: true,
        ),
        body: Padding(
         padding:EdgeInsets.symmetric(horizontal: targetPadding /2),
         child: Form(
           key: _formKey,
             child: ListView(
               children: <Widget>[
                 SizedBox(
                 width: 100.0,
                 height: 13.0,
               ),
                 TextFormField(
               controller: nameTypeController,
               decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
               borderRadius: BorderRadius.circular(20.0),
               ),
               focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              ),
               errorBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.indigoAccent),
                borderRadius: BorderRadius.circular(20.0),
               ),
               focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
              borderRadius: BorderRadius.circular(20.0),
               ),
               labelText: "Full Name",
              ),
              keyboardType: TextInputType.text,
             ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: emailTypeController,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.deepPurple),
                       borderRadius: BorderRadius.circular(20.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black),
                       borderRadius: BorderRadius.circular(20.0),
                     ),
                     errorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.indigoAccent),
                       borderRadius: BorderRadius.circular(20.0),
                     ),
                     focusedErrorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.purple),
                       borderRadius: BorderRadius.circular(20.0),
                     ),
                     labelText: "email",
                   ),
                     keyboardType: TextInputType.emailAddress,
                 ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
              TextFormField(
              controller: addressTypeController,
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              ),
              errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(20.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
              borderRadius: BorderRadius.circular(20.0),
              ),
              labelText: "Address",
              ),
              keyboardType: TextInputType.text,
              ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
              TextFormField(
              controller: phoneNumberTypeController,
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              ),
              errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(20.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
              borderRadius: BorderRadius.circular(20.0),
              ),
              labelText: "Phone Number",
              ),
              keyboardType: TextInputType.number,
              ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: ageTypeController,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.deepPurple),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     errorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.indigoAccent),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     focusedErrorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.purple),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     labelText: "Age",
                   ),
                   keyboardType: TextInputType.number,
                 ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: genderTypeController,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.deepPurple),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     errorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.indigoAccent),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     focusedErrorBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.purple),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     labelText: "Gender",
                   ),
                   keyboardType: TextInputType.text,
                 ),
                 SizedBox(
                   width: 100.0,
                   height: 10.0,
                 ),
                 RaisedButton(
                   color: Theme.of(context).primaryColor,
                   child: Text('save '),
                   onPressed: _submitForm,
                 ),
               ],
             ),
         ),
        ),
    );
  }
}
