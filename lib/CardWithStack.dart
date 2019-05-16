import 'package:flutter/material.dart';

class MyCardScaffold extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      height: 360,
      child: _buildCard(),
    );
  }

  Widget _buildCard() {
    return new Card(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      elevation: 5,
      child: new Column(
        children: <Widget>[
          _buildStack(),
          _buildColumText(),
          _buildRowText()
        ],
      ),
    );
  }
  
  Widget _buildStack(){
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        new Image.asset("images/lake.jpg"),
        new Container(
          margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
          child: new Text("Top 10 Australian beaches",style: new TextStyle(color: Colors.white,fontSize: 20),),
        )

      ],
    );
  }

  Widget _buildColumText(){
    return new Expanded(
      child: new Container(
        padding: EdgeInsets.all(8),
        decoration: new BoxDecoration(color: Colors.brown),
        alignment: AlignmentDirectional.centerStart,
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _columTextItem("Number 10"),
            _columTextItem("Whitehaven Beach"),
            _columTextItem("Whitsunday lsland, Whitsunday lslands"),
          ],
        ),
      )
    );
  }

  Text _columTextItem(String msg){
    return Text(
      msg,
      style: new TextStyle(
        color: Colors.lightBlue,
        fontSize: 14
      ),
    );
  }

  Widget _buildRowText(){
    return new Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: new Row(
        children: <Widget>[
          _rowTextItem("SHARE"),
          _rowTextItem("EXPLORE")
        ],
      ),
    );
  }

  Widget _rowTextItem(String msg){
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: new Text(
        msg,
        style: new TextStyle(
            color: Colors.green,
            fontSize: 14
        ),
      )
    );
  }

}