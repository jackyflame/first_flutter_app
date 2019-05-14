import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu,color: Colors.white,),
            tooltip: "导航菜单",
            onPressed: null),
        title: new Text("EVE商城"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.shopping_cart,color: Colors.white,),
              tooltip: "open shopping cart",
              onPressed: openCart
          )
        ],
      ),
      body: new Center(
        child: const Text("hello flutter"),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "增加",
          child: new Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.green,
          onPressed: null
      ),
    );
  }


  void openCart() {
    print("open shopping cart");
  }
}