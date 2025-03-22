import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuizApp()));
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int index = 0;
  List<String> questions = ['Sir is cool?', 'Dart is easy?', 'shumail is a good coder','Mobile application development is easy'];

  void next() {
    setState(() {
      index = (index + 1) % (questions.length + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Center(
        child: index == questions.length
            ? Text('Quiz Done!')
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[index]),
            ElevatedButton(onPressed: next, child: Text('True')),
            ElevatedButton(onPressed: next, child: Text('False')),
          ],
        ),
      ),
    );
  }
}
