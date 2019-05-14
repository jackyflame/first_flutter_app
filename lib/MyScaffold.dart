

import 'package:flutter/material.dart';

import 'MyAppBar.dart';

class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text("eve-商城",style: Theme.of(context).primaryTextTheme.title,),
          ),
          new Expanded(child: new Center(
            child: new Text("内容！！！"),
          ))
        ],
      ),
    );
  }

}