import 'package:flutter/material.dart';
class MainRegister extends StatefulWidget {
  static String routeName;

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
          Colors.black.withOpacity(0.3),
          BlendMode.dstATop),
      image: AssetImage('assets/background.jpg'),
    );
  }
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return Scaffold(
      appBar: AppBar(
        title: Text("GET MAID"),
        centerTitle: true,
      ),
      body: Center(
       child: Container(
       decoration: BoxDecoration(
       image: _buildBackgroundImage(),
    ),
    padding: EdgeInsets.all(10.0),
    child: Center(
    child: SingleChildScrollView(
    child: Container(
    width: targetWidth,
    child:  Column(
    children: <Widget>[
    Container(
      padding: EdgeInsets.all(5.0),
      width: 400,
      height: 50 ,

      child: Text('ARE YOU MAID OR CUSTOMER ? Kindly choose one option'),
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
    SizedBox(width: 30.0,),
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
    ),
    ),
    ),
    ),
    );
  }
}
