import 'dart:convert';
import 'package:flutter/material.dart';
import '../screens/category_maids_screen.dart';
import 'package:http/http.dart' as http;
//import 'package:get_maid/screens/auths.dart';
import 'package:get_maid/screens/user_login.dart';
class Register extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
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

  Future<void> _submitForm() async {
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

    final url= "https://get-maid-app.firebaseio.com/maids.json";
   final response = await http.post(
     url,
     body: jsonEncode(
       {
         'name': nameTypeController.text,       //good always remember to put .text in controller
         'address': addressTypeController.text,
         'age':ageTypeController.text.toString(),
       ' gender':genderTypeController.text,
        'phoneNumber':phoneNumberTypeController.text.toString(),
       'password' : passwordTypeController.text ,
         'categories':ans,
          },
     ),
   );
   print(json.decode(response.body));

    //print("===================================================");
    _formKey.currentState.save();
    Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
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
                        child: Text('Already Registered? Then Log in'),
                        onPressed: () => Navigator.pushReplacementNamed(context,  AuthScreen.routeName)
                    ),),
                  SizedBox(width: 15.0,),
                ],
              ),




           ],
          ),
      ),

      ),
    );
  }
}