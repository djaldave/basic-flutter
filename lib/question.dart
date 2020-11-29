import "package:flutter/material.dart";

class Question extends StatelessWidget {
	final String questionText;
	Question(this.questionText);
	build(data){
		return Container(
			width: double.infinity,
			margin: EdgeInsets.all(30),
			child:
				Text(questionText,
					style: TextStyle(fontSize: 28),
					textAlign: TextAlign.center,
				),
		);
	}	
}
