import 'package:flutter/material.dart';

class Param{
  final String title;
  final String description;
  Param(this.title, this.description);
}

class PjFirstScreen extends StatelessWidget {

  final datas = new List<Param>.generate(20,
          (i)=>new Param("Title $i", "A description of what needs to be done for Param $i"));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("JumpPage"),
      ),
      body: new ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context,i){
            return new ListTile(
              title: new Text(datas[i].title),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context)=>new PjSecond(datas[i])
                ));
              },
            );
          }),
    );
  }
}

class PjSecond extends StatelessWidget{

  final Param param;

  PjSecond(this.param);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${param.title}"),
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      body: new Center(
        //onPressed  点击事件
        child: new Text("${param.description}"),
      ),
    );
  }

}