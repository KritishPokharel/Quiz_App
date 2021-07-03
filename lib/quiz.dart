 import 'package:flutter/material.dart';
 import './question.dart';
 import './anwer.dart';
 
 class Quiz extends StatelessWidget {
   final List<Map<String,Object>> question;
   final Function answerQuestion;
   final int questionIndex;
   Quiz({this.question, this.answerQuestion,this.questionIndex});// @required halne this aagadi
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(question[questionIndex]['questiontext']), 
            ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer)
            {
              return Answer(
                ()=> answerQuestion(answer['score']),
                answer['text']);
            }).toList(),
          ],
        );   
  }
}