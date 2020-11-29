import "package:flutter/material.dart";

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  State createState()=>_MyAppState();
}
class _MyAppState extends State {
  var _questIndex=0;
  var _quest =[
      "color?",
      "fruit?",
      "food",
    ];
  void _questButt(){
    setState((){
      _questIndex = _questIndex + 1;
      if(_questIndex==_quest.length){
        _questIndex =0;
      }
    });
  }
  build(context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Al Dave"),
        ),
        body:Column(
          children:[
            Text(_quest[_questIndex]),
            RaisedButton(
              child: Text("Question"),
              onPressed: _questButt
            ),
          ],
        ),
      ),
    );
  }
}
