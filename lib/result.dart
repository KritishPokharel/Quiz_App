 import 'package:flutter/material.dart';
 
 class Result extends StatelessWidget {
   final int resultScore;
   final Function resetQuiz;
   Result(this.resultScore, this.resetQuiz);
   
   String get resultPhrase{
     String resultText;
     if (resultScore<=15){
       resultText='Your are an Introvert';

     } else if(resultScore<=24){
       resultText='You are an Ambivert';
     } else if (resultScore <= 30){
       resultText='You are an Extrovert';
     }
     return resultText;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold ),
    ),
        FlatButton(onPressed: resetQuiz , 
        child: Text('Restart Quiz!',),
        textColor: Colors.blue, 
        )
        ],
      )
    );
      
  }
}