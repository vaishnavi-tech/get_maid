import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get_maid/screens/main_register.dart';
import '../screens/category_maids_screen.dart';
import 'main_register.dart';
import 'package:http/http.dart' as http;
import 'package:get_maid/screens/auths.dart';

class Register extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 /* Map<String, bool> category = {
    'Gardener': false,
    'Cook': false,
    'Home Cleaner': false,
    'Driver': false,
  };*/
  TextEditingController nameTypeController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  TextEditingController ageTypeController = TextEditingController();
  TextEditingController phoneNumberTypeController = TextEditingController();
  TextEditingController genderTypeController = TextEditingController();
  TextEditingController passwordTypeController = TextEditingController();

  Future<void> _submitForm() async {
    print(nameTypeController.text);
    print(addressTypeController.text);
    print(ageTypeController.text.toString());
    print(phoneNumberTypeController.text.toString());
    print(genderTypeController.text);

    //final url= "https://get-maid-app.firebaseio.com/maids.json";
   //final response = await http.post(
     //url,
     //body: jsonEncode(
       /*{
         'name': nameTypeController.text,       //good always remember to put .text in controller
         'address': addressTypeController.text,
         'age':ageTypeController.text.toString(),
       ' gender':genderTypeController.text,
        'phoneNumber':phoneNumberTypeController.text.toString(),
       'password' : passwordTypeController.text ,
          },
     ),
   );*/
   //print(json.decode(response.body));

    //print("===================================================");
    _formKey.currentState.save();
    Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
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
                        onPressed: () => Navigator.pushReplacementNamed(context, AuthPage.routeName)
                    ),),
                  SizedBox(width: 15.0,),
                ],
              ),
         /*  ListView(
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
           ),*/

            /* Container(
                height: 350.0,

                    child: Column(

                     children:
                    .map((t) => CheckboxListTile(
                     title: Text(t),
                     value:
                     onChanged: (val) {
                    setState(() {

                   });
                   },
    ))
          .toList(),
    ),
             ),*/
           /* Row(
              children:<Widget>[

                  Expanded(
                      child: ListView.builder(
                         itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                         return Card(
                            elevation: 6,
                           child: ListTile(
                               title:Text("hi"),
                              leading: Checkbox(
                            value: ans[index],
                             onChanged: (value) {
                             setState(() {
                             ans[index]=value;
                            });

                            }),
      //title:Text("hi"),
                           ),
                         );
                         },
                      ),
                  ),
                ],
            ),*/


           ],
          ),
      ),

      ),
    );
  }
}