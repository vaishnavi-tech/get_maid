import 'package:flutter/material.dart';
import 'package:get_maid/screens/auths.dart';
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
  void _submitForm() {
    //if(!_formKey.currentState.validate()) {
    //return;
    //}
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
          title: Text("Customer Registration"),
          centerTitle: true,
        ),
        body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Form(
           key: _formKey,
             child: ListView(
               children: <Widget>[
               TextFormField(
                controller: emailTypeController,
               decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
               borderRadius: BorderRadius.circular(20.0),
              ),
               focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(20.0),
             ),
              errorBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.red),
               borderRadius: BorderRadius.circular(20.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(20.0),
             ),
               labelText: "Full Name",
             ),
               keyboardType: TextInputType.text,
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
              //   keyboardType: TextInputType.number,
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
                 RaisedButton(
                   color: Theme.of(context).primaryColor,
                   child: Text('save '),
                   onPressed: _submitForm,
                 ),
                 Row(
                   children: <Widget>[
                     Container(
                       padding:EdgeInsets.all(10.0),
                       color: Theme.of(context).accentColor,
                       child: RaisedButton(
                         child: Text('Press the button if you are not logged in'),
                         onPressed: () => Navigator.pushReplacementNamed(context, AuthPage.routeName)
                       ),),
                     SizedBox(width: 15.0,),
                   ],
                 )
               ],
             ),
         ),
        ),
    );
  }
}
