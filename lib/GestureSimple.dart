import 'package:flutter/material.dart';

class GestureScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gesture"),
      ),
      body: new MyButton(),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        //发生点击事件后回调
        print("onTap");
      },
      //发生双击时间后回调
      onDoubleTap: () {
        print("hia hia");
      },
      // 长按事件
      onLongPress: () {
        print("hia hia hia........");
      },
      child: new Container(
        height: 36.0,
        //EdgeInsets 这个类就比较diao了 通过他可以很好的控制widget上下左右的偏移量 有.all全部设置 也有.symmetric水平和垂直可选  也有.only上下左右可选
        //官网对EdgeInsets的说明 Typically used for an offset from each of the four sides of a box. For example, the padding inside a box can be represented using this class.
        //这里的padding对Center是操作无效的 但如果改为EdgeInsets.only(left:8.0),就可以看到明显的偏移
        padding: const EdgeInsets.all(8.0),
        //上下左右都偏移8像素边距
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        //symmetric的参数是可选的 水平方向
//        背景装饰
        decoration: new BoxDecoration(
            //圆角和颜色
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: new Center(child: new Text("点击监听")),
      ),
    );
  }
}
