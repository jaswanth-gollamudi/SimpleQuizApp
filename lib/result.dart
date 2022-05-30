import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   final int totalScore;
   final VoidCallback restartQuiz;
  Result(this.totalScore,this.restartQuiz);

  String get resultScore {
    String resultText;
    if(totalScore<20){
      resultText = "you are great";
    } else{
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: [Text(resultScore,
        ),
          FlatButton(onPressed: restartQuiz, child: Text("Restart Quiz"))
      ],
      ),
    );
  }
}
