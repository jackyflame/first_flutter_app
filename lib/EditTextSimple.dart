import 'package:flutter/material.dart';

///主页
class EditScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("输入事件"),
        ),
        body: new LoginApp()
    );
  }
}

class LoginApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }

}

class LoginState extends State<LoginApp>{

  final TextEditingController _controller = new TextEditingController.fromValue(new TextEditingValue(text: "帐号"));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          controller: _controller,
          decoration: new InputDecoration(
            hintText: "请输入帐号"
          ),
        ),
        new RaisedButton(
            onPressed: (){
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("用户名"),
                  content: new Text(_controller.text),
                )
              );
            },
          child: new Text("登录"),
        ),
      ],
    );
  }

}