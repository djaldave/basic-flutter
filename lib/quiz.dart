import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
	final questionIndex;
	final questions;
	final Function answerQuestion;
	Quiz({
		@required this.questionIndex,
		@required this.questions,
		@required this.answerQuestion
		});
	build(data){
		return Column(
          children:[
            Question(questions[questionIndex]["question"]),
            ...(questions[questionIndex]["answer"] as List<Map<String, Object>>).map((answer){
              return Answer(()=>answerQuestion(answer["score"]),answer["text"]);
            }),
          ],
        );
	}
}

