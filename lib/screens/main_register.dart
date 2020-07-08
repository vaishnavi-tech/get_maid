
import 'package:flutter/material.dart';
import 'package:get_maid/screens/signin.dart';
import '../model/user_auth.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';


class MainRegister extends StatefulWidget {
  static const routeName = '/register';

  @override
  _MainRegisterState createState() => _MainRegisterState();
}
class _MainRegisterState extends State<MainRegister> {
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

  Future<void> _submitForm(Function register) async {
    /* category.forEach(key,value){

    }*/
    List ans=[];

    category.forEach((key, value) {
      print("gfdfdgfdfffffffffffffffffff");
      if(value==true){
        ans.add(key);
      }

    });
    category.keys.map((String key){

      print("fgfbf");
      print(category[key]);

      if(category[key]==true){
        ans.add(key);
      }

    });

    print("======================");
    print(ans);
    print(nameTypeController.text);
    print(addressTypeController.text);
    print(ageTypeController.text.toString());
    print(phoneNumberTypeController.text.toString());
    print(genderTypeController.text);
    _isLoading=true;
    _formKey.currentState.save();


    print("===================================================");
  register( nameTypeController.text,
      addressTypeController.text,
      ageTypeController.text.toString(),
    genderTypeController.text,
    phoneNumberTypeController.text.toString(),
    passwordTypeController.text ,
    ans);
    _isLoading=false;
   // Navigator.pushReplacementNamed(context,  SignIn.routeName);
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
              /* Container(
                    padding:EdgeInsets.all(10.0),
                    color: Theme.of(context).accentColor,
                    child: RaisedButton(
                        child: Text('Already Registered? Then Log in'),
                        onPressed: () => Navigator.pushReplacementNamed(context,  MyHomePage.routeName)
                    ),),
                  SizedBox(width: 15.0,)*/

            ],
          ),
        ),

      ),
    );
  }
}