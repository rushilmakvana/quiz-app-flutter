import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final total;
  final VoidCallback reset;
  Result(this.total, this.reset);

  String get result {
    var text;
    if (total <= 4) {
      text = 'you are bad';
    } else if (total <= 8) {
      text = 'Decent one!';
    } else if (total <= 12) {
      text = 'Awsome !!';
    } else {
      text = 'very bad !';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.purple.shade700,
            // color: Colors.purple.shade700,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
