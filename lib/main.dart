import "package:flutter/material.dart";
import 'quiz.dart';
import "result.dart";

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  State createState(){
    return _MyAppState();
  } 
}
class _MyAppState extends State {
  var _questionIndex=0;
  var _totalScore=0;
  final _questions= const[
          {
            "question":"What is your favorite Color? ",
            "answer":
            [
              {"text":"blue","score":"10"},
              {"text":"black","score":"20"}
            ]
          },
          {
            "question":"What is your favorite Number?",
            "answer":
            [
              {"text":"1","score":"10"},
              {"text":"2","score":"20"},
            ]
          },
          {
            "question":"What is your favorite Fruit?",
            "answer":
            [
              {"text":"mango","score":"10"},
              {"text":"orange","score":"20"}]
          },
          {
            "question":"what is your favorite Shape?",
            "answer":["rectangle","circle"]
          },
        ];
  void _answerQuestion(int score){
    setState((){
      _questionIndex = _questionIndex +1;
      _totalScore = _totalScore+ score;
    });
  }
  build(context)  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App")),
        body:_questionIndex < _questions.length? Quiz(questionIndex: _questionIndex,questions: _questions,answerQuestion: _answerQuestion):Result(),
      ),
    );
  }
}

