import 'package:flutter/material.dart';

class MyCardScafold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: new MyListContainer2(),
    );
  }
}

class MyCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCardState();
  }
}

class MyCardState extends State<MyCard> {
  var _checked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new ListTile(
        title: new Text("title"),
        subtitle: new Text("subtitle"),
        leading: new Icon(
          Icons.email,
          color: Colors.blueAccent,
        ),
        trailing: new Checkbox(
            value: _checked,
            onChanged: (bool checked) {
              setState(() {
                _checked = checked;
              });
            }),
      ),
    );
  }
}

class MyListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new ListView(
        children: <Widget>[
          _getItem("高兴", Icons.accessibility),
          _getItem("雪花", Icons.ac_unit),
          _getItem("购物车", Icons.shopping_cart)
        ],
      ),
    );
  }

  Widget _getItem(String title, IconData icon) {
    return new Column(
      children: <Widget>[
        new ListTile(
          leading: new Icon(icon),
          title: new Text(title),
          subtitle: new Text(title),
          trailing: new Icon(icon),
        ),
        new Divider()
      ],
    );
  }
}

class MyListContainer2 extends StatelessWidget {

  final List<String> items = new List.generate(1000, (index)=> "item $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new ListView.builder(
          itemBuilder: (context,index){
            return _getItem(items[index],Icons.shopping_cart);
          }
      ),
    );
  }

  Widget _getItem(String title, IconData icon) {
    return new Column(
      children: <Widget>[
        new ListTile(
          leading: new Icon(icon),
          title: new Text(title),
          subtitle: new Text(title),
          trailing: new Icon(icon),
        ),
        new Divider()
      ],
    );
  }
}
