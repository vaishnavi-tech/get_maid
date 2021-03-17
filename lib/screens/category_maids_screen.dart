import 'package:flutter/material.dart';
import 'package:get_maid/scoped-models/main.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../widgets/maids/maid_card.dart';
import 'package:scoped_model/scoped_model.dart';

class CategoryMaidsScreen  extends StatefulWidget {
  final String title;
  CategoryMaidsScreen ({this.title});  //constructor
  static const routeName = '/categories-maids';

  @override
  _CategoryMaidsScreenState createState() => _CategoryMaidsScreenState();
}

class _CategoryMaidsScreenState extends State<CategoryMaidsScreen> {
  List finalmaidlist=[];


  Future  getmaids()async {


    final url = "https://get-maid-app.firebaseio.com/maids.json";
    final response = await http.get(url);
    print("yahaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

    print(json.decode(response.body));
    setState(() {
      var answer = json.decode(response.body);
      answer.forEach((key, value) {
        value.forEach((innerkey, innervalue) {
          print(innervalue);
          if (innerkey == 'categories') {
            for (int i = 0; i < innervalue.length; i++) {
              print("heloo");
              print(widget.title);
              if (innervalue[i] == widget.title) {
                print('hhijijl');
                print(value);
                finalmaidlist.add(value);

              }
            }
          }
        });
      });
      print(finalmaidlist);
    });
  }
  @override
  void initState(){
    this.getmaids();
  }


  Widget _buildMaidList() {
    Widget maidCard;
    if(finalmaidlist.length> 0) {
      maidCard = ListView.builder(
          itemBuilder: (BuildContext context,int index) =>MaidCard(finalmaidlist[index], index),
      itemCount: finalmaidlist.length,
      );
    }
    else {
      maidCard = Container();
    }
    return maidCard;
  }
  @override
  Widget build(BuildContext context) {

    return ScopedModelDescendant<MainModel>(builder: (BuildContext context, Widget child, MainModel model) {
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(widget.title),
        ),

        body: _buildMaidList(),
      );
    },
    );
  }
}

