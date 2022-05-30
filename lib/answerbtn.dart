import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  final VoidCallback selectHandler;
  String answer;
  AnswerBtn(this.selectHandler,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
