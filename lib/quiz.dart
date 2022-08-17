import 'package:flutter/material.dart';
import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQ;
  // final int total;

  Quiz({
    required this.answerQ,
    required this.index,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text('Dummy'),
        Question(questions[index]['question'] as String),
        ...(questions[index]['options'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerBtn(
              () => answerQ(answer['score'] as int), answer['name'] as String);
        }).toList(),
      ],
    );
  }
}
