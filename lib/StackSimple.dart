import 'package:flutter/material.dart';

class MyStackScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: new MyStatck(),
    );
  }
}

class MyStatck extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MyStackState();
  }
}

class MyStackState extends State<MyStatck>{
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: const Alignment(0.0, -0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundColor: Colors.blue,
          backgroundImage: new AssetImage("images/lake.jpg"),
          radius: 80,
        ),
        new Container(
          child: new Text(
            "funny",
            style : new TextStyle(
              color:Colors.white,
              fontSize: 20
            )
          ),
        )
      ],
    );
  }

}