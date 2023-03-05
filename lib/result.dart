import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final VoidCallback resetQuizHandler;

  Result(this.totalScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if(totalScore <=8) {
      resultText = 'Your are awesome and innocent';
    }else if(totalScore<=12) {
      resultText = 'Pretty likeable!';
    }else if(totalScore<=16){
      resultText = 'You are strange.. >?';
    }else {
      resultText = 'You are so bad.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
            ),
            ElevatedButton(child: Text('Restart Quiz'), onPressed: resetQuizHandler)
        ]),
        );
  }
}