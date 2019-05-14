import 'package:flutter/material.dart';

class MyLakeScoffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("风景如画"),
      ),
      body: new ListView(
        children: <Widget>[
          new Image.asset(
              "images/lake.jpg",
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
          titleRow(),
          buttonRow(),
          contentRow(),
        ],
      ),
    );
  }

  Widget titleRow(){
      return new Container(
        padding: EdgeInsets.all(32),
        child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          "Oeschinen Lake Campground",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                      new Text(
                        "Kandersteg, Switzerland",
                        style: new TextStyle(color: Colors.grey[500],),
                      ),
                    ],
                  )
              ),
              new Icon(Icons.star,color: Colors.red[500],),
              new Text("35")
            ]
        ),
      );
  }

  Widget contentRow(){
    return new Container(
      padding: EdgeInsets.all(32),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        softWrap: true,),
    );
  }

  Widget buttonRow(){
    return new Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          getButton(Icons.call, "联系"),
          getButton(Icons.near_me, "导航"),
          getButton(Icons.share, "分享")
        ],
      ),
    );
  }

  Column getButton(IconData icon,String title){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(icon,color: Colors.lightBlue,),
        new Container(
          padding: EdgeInsets.only(top: 8),
          child: new Text(title,style: new TextStyle(color: Colors.lightBlue),),
        )
      ],
    );
  }
}