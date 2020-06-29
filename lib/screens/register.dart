import 'package:flutter/material.dart';
import '../screens/category_maids_screen.dart';
class Register extends StatefulWidget {
  static const routeName = '/register';
  //final Function addMaid;
 // MaidInput( this.addMaid);
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<bool> ans=[false,false,false,false];
  List<String> text = ["Gardener", "Cook", "Home Cleaner","Driver"];
  TextEditingController nameTypeController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  TextEditingController ageTypeController = TextEditingController();
  TextEditingController phoneNumberTypeController = TextEditingController();
  TextEditingController genderTypeController = TextEditingController();
  void _submitForm() {
    //if(!_formKey.currentState.validate()) {
      //return;
    //}
    print("===================================================");
    print(nameTypeController.text);
    print(addressTypeController.text);
    print(ageTypeController.text.toString());
    print(phoneNumberTypeController.text.toString());
    print(genderTypeController.text);
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
            /*  Container(
                height: 350.0,

                    child: Column(

                     children: text
                    .map((t) => CheckboxListTile(
                     title: Text(t),
                     value:.
                     onChanged: (val) {
                    setState(() {

                   });
                   },
    ))
          .toList(),
    ),
             ),*/
            Row(
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
            ),
                  RaisedButton(
                     color: Theme.of(context).primaryColor,
                    child: Text('save '),
                     onPressed: _submitForm,
                   )
            ],
          ),
      ),

      ),
    );
  }
}
            /*    Widget _buildAddressTextField() {
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
    Navigator.pushReplacementNamed(context, CategoryMaidsScreen.routeName);
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
}*/

