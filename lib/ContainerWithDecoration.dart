import 'package:flutter/material.dart';

class MyContainerScafold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: new MyContainer(),
    );
  }
}

class MyContainer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyContainerState();
  }

}

class MyContainerState extends State<MyContainer>{
  @override
  Widget build(BuildContext context) {
    var imge = new Expanded(
        child: new Container(
          decoration: new BoxDecoration(
            border: new Border.all(color: Colors.lightBlue,width: 5),
            borderRadius: const BorderRadius.all(const Radius.circular(8))
          ),
          margin: const EdgeInsets.all(4),
          child: new Image.asset("images/lake.jpg"),
        )
    );

    var row = new Row(
      children: <Widget>[
        imge,
        imge
      ],
    );

    return new Container(
      decoration: new BoxDecoration(color: Colors.blueGrey),
      child: ListView(
        children: <Widget>[
          row,
          row,
          row
        ],
      ),
    );
  }

}