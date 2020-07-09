
import 'package:flutter/material.dart';
import 'package:get_maid/screens/signin.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../model/user.dart';


class MaidRegister extends StatefulWidget {
  static const routeName = '/register';

  @override
  _MaidRegisterState createState() => _MaidRegisterState();
}
class _MaidRegisterState extends State<MaidRegister> {
  var _isLoading = false;
  User user;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, bool> category = {
    'Gardener': false,
    'Cook': false,
    'Home Cleaner': false,
    'Driver': false,
    'Babysitter' : false,
    'Elder caretaker':false,
    'Laundry':false,
    'One Day Service':false,
    'Household Worker':false,
    'Nursing':false,
    'Chamber Maid':false,
    'Domestic Helper':false,
    'Housekeeping Supervisor':false,
  };

  TextEditingController nameTypeController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  TextEditingController ageTypeController = TextEditingController();
  TextEditingController phoneNumberTypeController = TextEditingController();
  TextEditingController genderTypeController = TextEditingController();
  TextEditingController passwordTypeController = TextEditingController();
  TextEditingController emailTypeController = TextEditingController();


  Future<void> _submitForm(Function register) async {
    List ans=[];

    category.forEach((key, value) {
      if(value==true){
        ans.add(key);
      }

    });
    category.keys.map((String key){


      if(category[key]==true){
        ans.add(key);
      }

    });

    print(nameTypeController.text);
    print(addressTypeController.text);
    print(ageTypeController.text.toString());
    print(phoneNumberTypeController.text.toString());
    print(genderTypeController.text);
    _isLoading=true;
    _formKey.currentState.save();
    register( nameTypeController.text,
      addressTypeController.text,
      ageTypeController.text.toString(),
    genderTypeController.text,
    phoneNumberTypeController.text.toString(),
    passwordTypeController.text ,
      emailTypeController.text,
    ans);
    _isLoading=false;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>  SignIn()));

  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: targetPadding /2),
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
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                controller: ageTypeController,
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
                  labelText: "Age",
                ),
                keyboardType: TextInputType.number,
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
              ),TextFormField(
                controller: genderTypeController,
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
                  labelText: "Gender",
                ),
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                controller: passwordTypeController,
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
                  labelText: "Password",
                ),
                keyboardType: TextInputType.text,
              ),
              Container( height:750.0,
                child:  Column(
                  children: category.keys.map((String key) {
                    return new CheckboxListTile(
                      title: new Text(key),
                      value: category[key],
                      onChanged: (bool value) {
                        setState(() {
                          category[key] = value;
                        });
                      },
                    );
                  }).toList(),
                ),),
             if(_isLoading)
                 CircularProgressIndicator()
                         else
                  ScopedModelDescendant<MainModel>(
                       builder:(BuildContext context,
                                  Widget child, MainModel model) {
                      return
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text('save '),
                      onPressed:() => _submitForm(model.register),
                    );
                       },
                  ),
              Container(
                height: 40.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop(SignIn.routeName);
                    },
                    child:

                    Center(
                      child: Text('Go Back',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoCondensed')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}