import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{

  final Widget title;
  final num test;


  //MyAppBar(this.title, this.test);
  MyAppBar({this.title, this.test});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 76,
      padding: const EdgeInsets.fromLTRB(8,20,8,0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: const Icon(Icons.menu,color: Colors.white,),
              tooltip: "导航",
              onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: const Icon(Icons.search,color: Colors.white,),
              tooltip: "搜索",
              onPressed: null)
        ],
      ),
    );
  }

}