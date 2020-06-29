import 'package:flutter/material.dart';
class MainRegister extends StatefulWidget {
  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {
  TextEditingController nameTypeController = TextEditingController();
  List<bool> ans=[false,false];
  List<String> text = ["Maid", "Customer"];
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.dstATop),
      image: AssetImage('assets/background.jpg'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Are you Maid Or Customer ?"),
        centerTitle: true,
      ),
      body: Center(
       child:Container(
        decoration: BoxDecoration(
        image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
             child: Column(
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
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  //padding:EdgeInsets.all(10.0),
                  color: Theme.of(context).accentColor,
                  child: RaisedButton(
                    child: Text('Maid'),
                    onPressed: () => Navigator.pushReplacementNamed(context, '/register') ,
                  ),),
                SizedBox(width: 10.0,),
                Container(
                  //padding:EdgeInsets.all(10.0),
                  color: Theme.of(context).accentColor,
                  child: RaisedButton(
                    child: Text('Customer',
                    style: TextStyle(
                      color: Colors.black
                    ),),
                    onPressed: () => Navigator.pushReplacementNamed(context, '/userRegister') ,
                  ),),
              ],
            )

          ],
        ),

      ),
      )
    );
  }
}
