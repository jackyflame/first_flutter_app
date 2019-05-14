import 'package:flutter/material.dart';

class MyCardScafold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: new MyCard(),
    );
  }

}

class MyCard extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCardState();
  }

}

class MyCardState extends State<MyCard>{

  var _checked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new ListTile(
        title: new Text("title"),
        subtitle: new Text("subtitle"),
        leading: new Icon(Icons.email,color: Colors.blueAccent,),
        trailing: new Checkbox(
            value: _checked,
            onChanged: (bool checked){
              setState(() {
                _checked = checked;
              });
            }
        ),
      ),
    );
  }

}