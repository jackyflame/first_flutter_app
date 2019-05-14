import 'package:flutter/material.dart';

import 'MyCardListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    return MaterialApp(
      title: 'Welcom to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryTextTheme: TextTheme(
          title: new TextStyle(color: Colors.white)
        )
      ),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("Welcome to Flutter"),
//        ),
//        body: new Center(
//            //child: const Text("Hello world")
//            child: new RandomWords(),
//        ),
//      ),
      home: new MyCardScafold(),

    );
  }
}
