
import 'package:course_appliation_project/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override

  
  
 _MyAppState createState()=>_MyAppState();
}

 class _MyAppState extends State<MyApp>{ 

    final _question = const [
      {
        'questiontext':'You feel more yourself when you’re:',
        'answers':[
        {'text': 'The Center of attraction','score': 10},
        {'text':'Background Guy', 'score':5 },
        {'text': 'Just want to hide in a mass','score': 8},
           ],
      },
      {
         'questiontext':'You tend to find talking to new people:',
        'answers':[
        {'text': 'Energizing','score': 10},
        {'text':'Akward', 'score':5 },
        {'text': 'Neutral','score': 8},
          ],

      },

      {
         'questiontext':'You’re more productive when you’re working :',
        'answers':[
        {'text': 'With Team','score': 10},
        {'text':'Alone', 'score':5 },
        {'text': 'I am a both Team and a Solo Worker','score': 8},
          ],

      },
    ];
  var _questionIndex= 0;
  var _totalscore=0;


  void _answerQuestion(int score){
   _totalscore += score;
    setState(() {
       _questionIndex=_questionIndex + 1;
       });
     print(_questionIndex);
    
    if (_questionIndex < _question.length){
      print('we have more qusestion');
    }
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalscore=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _question.length ?
        Quiz(answerQuestion: _answerQuestion , questionIndex: _questionIndex,question: _question,)
        : Result(_totalscore,_resetQuiz) ,
      ),
    ) ;
  }
} 
 