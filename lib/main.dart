import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return MyAppState();
    }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState( () {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }
  
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              autofocus: true,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('answer 2 chosen'),
              autofocus: true,
              child: Text('Answer 2'),
            ),
             ElevatedButton(
              onPressed: () => {
                print('answer 3 chosen')
              },
              autofocus: true,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: (){
                print('answer 4 chosen');
              },
              autofocus: true,
              child: Text('Answer 4'),
            ),
           
          ],
        ),
      ),
    );
  }
}
