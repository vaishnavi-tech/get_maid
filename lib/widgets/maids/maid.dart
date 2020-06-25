import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../maids/maid_card.dart';
class Maids extends StatelessWidget {
  final List<Map<String,dynamic >> maids;

  Maids([this.maids = const [] ]) {
    print('[Maids Widget] Constructor');
  }

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
    print('[Maids Widget] build()');
   return _buildMaidList();
  }
}