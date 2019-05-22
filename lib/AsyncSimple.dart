import 'package:flutter/material.dart';
import 'dart:async';

///主页
class AsyncScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("京南商城"),
        ),
        body: new Center(child: new SelectionButton()));
  }
}

///添加一个打开页面的按钮
class SelectionButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
        onPressed: (){
          print("-------------A------------");
//          _navigatorAndDisplaySelection1(context);
          _navigatorAndDisplaySelection(context);
          print("-------------B------------");
        },
      child: new IconButton(icon: const Icon(Icons.shopping_cart,color: Colors.red,)),
    );
  }

  ///第一种异步方式 async await 启动并等待返回结果
  _navigatorAndDisplaySelection1(BuildContext context) async {
    print("-------------C------------");
    var rst = await Navigator.push(context, new MaterialPageRoute(
        builder: (context)=>new SelectionScreen())
    );
    print("-------------D------------");
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$rst")));
  }

  ///第二种异步方式 Future API 启动后不等待返回结果 但是返回后有回调函数 相当于注册了一个接收者
  _navigatorAndDisplaySelection(BuildContext context) {
    print("-------------C------------");
    Navigator.push(context, new MaterialPageRoute(
        builder: (context)=>new SelectionButton())
    ).then((rst){
      print("-------------E------------");
      Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$rst")));
    }).catchError((error){
      print("$error");
    });
    print("-------------D------------");
  }

}

///在购物车页面中显示两个商品
class SelectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("购物车"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getPadding(context,"三级头"),
            _getPadding(context,"三级甲"),
          ],
        ),
      ),
    );
  }

  Widget _getPadding(BuildContext context, String text) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: () {
          Navigator.pop(context, text);
        },
        child: new Text(text),
      ),
    );
  }

}