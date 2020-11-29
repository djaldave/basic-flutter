import "package:flutter/material.dart";
import 'question.dart';
import 'answer.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  State createState(){
    return _MyAppState();
  } 
}
class _MyAppState extends State {
  var _questionIndex=0;
  var _questions=[
          {
            "question":"What is your favorite Color? ",
            "answer":["blue","black"]
          },
          {
            "question":"What is your favorite Number?",
            "answer":["1","2","3"]
          },
          {
            "question":"What is your favorite Fruit?",
            "answer":["mango","orange"]
          },
          {
            "question":"what is your favorite Shape?",
            "answer":["rectangle","circle"]
          },
        ];
  void _answerQuestion(){
    setState((){
      _questionIndex = _questionIndex +1;
      if(_questionIndex == _questions.length){
        _questionIndex = 0;
      }
    });
  }
  build(context)  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App")),
        body: Column(
          children:[
            Question(_questions[_questionIndex]["question"]),
            ...(_questions[_questionIndex]["answer"] as List<String>).map((answer){
              return Answer(_answerQuestion,answer);
            }),
          ],
        ),
      ),
    );
  }
}

