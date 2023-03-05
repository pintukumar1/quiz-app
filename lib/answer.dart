import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          textStyle: TextStyle(
            color: Colors.white,
          )
        ),
        child: Text(answerText),
        onPressed: answerHandler,
      ),
    );
  }
}
