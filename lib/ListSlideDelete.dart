import 'package:flutter/material.dart';

class MySlideDeleteScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: new MySlide(),
    );
  }
}

class MySlide extends StatelessWidget{

  final List<String> items = new List.generate(100, (int index) => "item $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return new Dismissible(
              key: new Key(item),
              onDismissed: (direction){
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text("$item dismissed"))
                );
              },
              background: new Container(color: Colors.red,),
              child: new ListTile(
                title: new Text(item),
              )
          );
        }
    );
  }
}