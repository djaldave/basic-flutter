import "package:flutter/material.dart";

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  State createState(){
    return MyAppState();
  }
}
class MyAppState extends State {
  var questIndex=0;
  var quest =[
      "color?",
      "fruit?",
      "food",
    ];
  void questButt(){
    setState((){
      questIndex = questIndex + 1;
      if(questIndex==quest.length){
        questIndex =0;
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
            Text(quest[questIndex]),
            RaisedButton(
              child: Text("Question #1"),
              onPressed: questButt
            ),
          ],
        ),
      ),
    );
  }
}
