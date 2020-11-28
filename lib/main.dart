import "package:flutter/material.dart";

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  build(context){
    var questions = 
    [
    "What is your favorite fruits?",
    "What is your favorite Vegetable?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Al Dave's App")
        ),
      body: Column(
        children: 
        [
          Text("The Questions"),
          RaisedButton(
            child: Text("Questions #1"),
            onPressed: null
          ),
          RaisedButton(
            child: Text("Questions #1"),
            onPressed: null
          ),
          RaisedButton(
            child: Text("Questions #1"),
            onPressed: null
          ),
        ]
      ),
      ),
    );
  }
}