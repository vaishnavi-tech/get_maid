import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'register.dart';


class CategoryMaidsScreen  extends StatefulWidget {


  final String title;
  CategoryMaidsScreen ({this.title});  //constructor
  static const routeName = '/categories-maids';

  @override
  _CategoryMaidsScreenState createState() => _CategoryMaidsScreenState();
}

class _CategoryMaidsScreenState extends State<CategoryMaidsScreen> {
  List finalmaidlist=[];
  String haikinahi="0";
  /*Future<void> getmaids() async {
    final url = "https://get-maid-app.firebaseio.com/maids.json";
    final response = await http.get(url).then((http.Response response) {
      print(json.decode(response.body));
    });
    //if (widget.title == key ){

      //}
  }*/
  Future<void> getmaids()async {
    final url = "https://get-maid-app.firebaseio.com/maids.json";
  haikinahi="1";
    final response = await http.get(url);
    print("yahaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

    print(json.decode(response.body));
   var answer=json.decode(response.body);
    answer.forEach((key , value){
      value.forEach((innerkey , innervalue){
        print(innervalue);
        if(innerkey == 'categories'){
          for(int i=0; i<innervalue.length;i++){
            print("heloo");
            print(widget.title);
            if(innervalue[i]==widget.title){
              print('hhijijl');
              print(value);
              finalmaidlist.add(value);
            }
          }
        }
      });
    });
    print(finalmaidlist);
  }

  @override
  void initState()async {
    await getmaids();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed:getmaids,),
        ],
      ),
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
          ),
          Container(
              child:Text(finalmaidlist[0]['name'].toString()),
          ),

        ],
      ),
    );
  }
}

/*class CategoryMaidsScreen  extends StatelessWidget {
 // final List<Map<String, dynamic>> maids;
  //final Function addMaid;
  //CategoryMaidsScreen ([this.maids = const [],this.addMaid]);
  final String title;
  CategoryMaidsScreen (this.title);
  static const routeName = '/categories-maids';
  Widget _buildMaidList() {
    Widget maidCard ;
    if (maids.length > 0) {
      maidCard =
          ListView.builder(
            itemBuilder: (BuildContext context,int index) =>MaidCard(maids[index], index),
            itemCount: maids.length,
          );
    }  else {
      maidCard= Container();
    }
    return maidCard;
  }
 
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
   // final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(categoryTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed: () => debugPrint('Item searched'),),
        ],
      ),
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: MaidControl(addMaid,),
          ),
          Expanded(child:_buildMaidList())
        ],
      ),
    );
  }
}*/


// title milega screen se
// repsonse milega firebase se    =============
// title aur response ke cateory se compare karenge
