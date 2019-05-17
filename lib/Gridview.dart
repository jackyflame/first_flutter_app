import 'package:flutter/material.dart';

class MyGridviewScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardView"),
      ),
      body: _buildGrid4(),
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

  ///2.最常用的网格布局之count
  Widget _buildGrid2() {
    return new GridView.count(
      //      横轴数量 这里的横轴就是x轴 因为方向是垂直的时候 主轴是垂直的
      crossAxisCount: 2,
      padding: const EdgeInsets.all(4.0),
      //主轴间隔
      mainAxisSpacing: 20.0,
      //横轴间隔
      crossAxisSpacing: 4.0,
      children: _buildGridList(30),
    );
  }

  ///3.滚动效果的ScrollView
  Widget _buildGrid3() {
    return new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverGrid.count(
            crossAxisSpacing: 10.0,
            //      横轴数量 这里的横轴就是x轴 因为方向是垂直的时候 主轴是垂直的
            crossAxisCount: 2,
            children: _buildGridList(30),
          ),
        ),
      ],
    );
  }

  ///.GridView.custom
  Widget _buildGrid4(){
    return GridView.custom(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4
        ), 
        childrenDelegate: new SliverChildBuilderDelegate(
            (context,index){
              return new Image.asset("images/lake.jpg");
            },
          childCount: 30
        ),
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