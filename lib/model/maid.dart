import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Maids extends StatelessWidget {

  final List<Map<String, dynamic>> maids;

  Maids([this.maids = const [] ]) {
    print('[Maids Widget] Constructor');
  }

  Widget _buildMaidItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
           Text(maids[index] ['name']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Theme.of(context).accentColor,
                onPressed: () => {},
                child: Text('apply'),
              )
            ],
          )

        ],
      ),
    );
  }
Widget _buildMaidList() {
  Widget maidCard ;
  if (maids.length > 0) {
    maidCard =
        ListView.builder(
          itemBuilder: _buildMaidItem,
          itemCount: maids.length,
        );
  }  else {
    maidCard= Container();
  }
  return maidCard;
}
  @override
  Widget build(BuildContext context) {
    print('[Maids Widget] build()');
   return _buildMaidList();
  }
}