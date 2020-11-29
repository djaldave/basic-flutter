import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
	final Function _answerQuestion;
	final String _answerText;
	Answer(this._answerQuestion, this._answerText);
	build(data){
		return Container(
			width: double.infinity,
			child:
				RaisedButton(
					child: Text(_answerText),
					onPressed: _answerQuestion,
					color: Colors.blue,
					textColor:Colors.white,
				),
		);
	}
}

