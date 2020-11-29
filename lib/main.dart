import "package:flutter/material.dart";
import "question.dart";
import "answer.dart";
void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  State createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State {
  var _questionIndex =0;
  var questions=[
    "fruits?",
    "colors?",
    "number?"
  ];
  void _answerQuestion(){
    setState((){
      _questionIndex = _questionIndex +1;
      if(_questionIndex == questions.length){
        _questionIndex=0;
      }
    });
  }
  build(context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text("App"),
        ),
        body: Column(
          children:[
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }  
}
