import 'package:flutter/material.dart';

class RowSimple extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("row_simple"),
      ),
      body: new Container(
        color: Colors.green,
        child: buildRow(),
      )
    );
  }

  Widget buildRow(){
    return new Row(
      children: <Widget>[
        new Icon(Icons.access_time),
        new Icon(Icons.favorite_border),
        new Icon(Icons.ac_unit)
      ],
      mainAxisSize: MainAxisSize.min,
    );
  }

}