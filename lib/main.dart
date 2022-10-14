import 'package:demo_app/button.dart';
import 'package:demo_app/quiz.dart';
import 'package:demo_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _idx = 0;
  final _questions = [
    {
      'question': 'what\'s Your favorite Food ?',
      'options': [
        {'name': 'Pizza', 'score': 1},
        {'name': 'Burgur', 'score': 2},
        {'name': 'Chocolate', 'score': 3},
        {'name': 'ice-cream', 'score': 4}
      ],
    },
    {
      'question': 'what\'s Your favorite Game ?',
      'options': [
        {'name': 'Cricket', "score": 4},
        {'name': 'Hockey', 'score': 3},
        {'name': 'Sokker', 'score': 2},
        {'name': 'BasketBall', 'score': 1}
      ],
    },
    {
      'question': 'what\'s Your favorite Color ?',
      'options': [
        {'name': 'Blue', 'score': 2},
        {'name': 'Purple', 'score': 3},
        {'name': 'Black', 'score': 1},
        {'name': 'White', 'score': 4}
      ]
    }
  ];
  int _total = 0;
  void _answer(int score) {
    setState(() {
      _idx += 1;
      _total += score;
    });
    // print(_idx);
  }

  _reset() {
    setState(() {
      _idx = 0;
      _total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        useMaterial3:true,
        pageTransitionTheme: PageTransitionTheme(
          builders:<TargetPlatform,PageTransitionBuilder>{
             TargetPlatfrom.android : FadeUpwordPageTransitionBuilder(),
            },
          ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
          // titleTextStyle: TextStyle(fontSize: 16),
          centerTitle: true,
          backgroundColor: Colors.purple.shade700,
        ),
        body: _idx < _questions.length
            ? Quiz(
                answerQ: _answer,
                index: _idx,
                questions: _questions,
              )
            : Result(_total, _reset),
      ),
    );
  }
}

void main() => runApp(MyApp());
