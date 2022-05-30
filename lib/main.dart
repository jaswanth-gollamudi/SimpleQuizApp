import 'package:flutter/material.dart';
import 'package:starter_app/quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      "questionType": "what is wrong?",
      "answers": [
        {"text": "so", "score": 10},
        {"text": "it", "score": 2},
        {"text": "what", "score": 2},
        {"text": "how", "score": 8}
      ]
    },
    {
      "questionType": "what is ur fav animal",
      "answers": [
        {"text": "lion", "score": 10},
        {"text": "giraffe", "score": 3},
        {"text": "sparrow", "score": 4},
        {"text": "dog", "score": 5},
      ]
    },
    {
      "questionType": "what is ur fav tv show?",
      "answers": [
        {"text": "zoo", "score": 10},
        {"text": "wee", "score": 6},
        {"text": "boys", "score": 5},
        {"text": "girls", "score": 2}
      ]
    },
    {
      "questionType": "what is fav game?",
      "answers": [
        {"text": "cric", "score": 10},
        {"text": "ball", "score": 6}
      ]
    },
  ];
  var index = 0;
 var totalScore=0;

 void restartQuiz(){
   setState(() {
      index = 0;
      totalScore=0;
   });
 }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      index = index + 1;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("hi title app bar"),
          ),
          body: index < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  index: index,
                  questions: questions,
                )
              : Result(totalScore,restartQuiz)),
    );
  }
}
