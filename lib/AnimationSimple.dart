import 'package:flutter/material.dart';

class AnimationScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
      ),
      body: new MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAnimationState();
  }

}

class MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  ///重写此方法以执行初始化 每次构建State调用此方法一次 注意如果重写此方法 必须加 super.initState();
  @override
  void initState() {
    print("initState初始化");
    super.initState();
    //动画控制器
    controller = new AnimationController(
      //vsync 需要实现TickerProviderStateMixin or SingleTickerProviderStateMixin 可以避免动画不在当前屏幕显示时消耗资源
      duration: const Duration(milliseconds: 2000),//持续时间
      vsync: this
    );
    animation = new Tween(begin: 0.0,end: 300.0).animate(controller)
        ..addListener((){
            //build重建
            setState(() {}
          );
    });
    //开始执行此动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        margin: EdgeInsets.symmetric(vertical:  10),
        height: animation.value,
        width: animation.value,
        child: new FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}