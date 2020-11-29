import 'package:flutter/material.dart';

class Result extends StatelessWidget {
	final int score;
	final Function resetHandler;
	Result(this.score, this.resetHandler);

	String get result{
		String result ="";
		if(score==40){
			result = "Good job";
		}else if(score == 30){
			result = "nice";
		}else if(score == 50){
			result = "great";
		}else if(score==60){
			result ="awesome";
		}
		return result;
	}
	build(data){
		return Center(
			child:Column(
	          children:[
	          	Text(result,style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),textAlign:TextAlign.center),
	          	FlatButton(child:Text("Reset Quiz"),textColor:Colors.blue,onPressed:resetHandler),
	          ],
	        ),
		);
	}
}
