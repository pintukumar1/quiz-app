import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;

  String get resultPhrase {
    String resultText;
    if(totalScore <=8) {
      resultText = 
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Center(
          child: Text(
            'Well done...',
          ),
        );
  }
}