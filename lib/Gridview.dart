import 'package:flutter/material.dart';

class MyGridviewScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: _buildGridview1(),
    );
  }

  Widget _buildGridview1(){
    return new GridView.extent(
      //横轴的最大长度
      maxCrossAxisExtent: 180,
      padding: EdgeInsets.all(4),
      //主轴间距
      mainAxisSpacing: 4,
      //横轴间距
      crossAxisSpacing: 4,
      children: _buildGridList(30),
    );
  }
  
  List<Container> _buildGridList(int count){
    return List<Container>.generate(
        count, 
        (int index)=>new Container(
            child: new Image.asset("images/lake.jpg"),
        )
    );
  }
}