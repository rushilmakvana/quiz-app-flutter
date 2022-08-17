import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  final VoidCallback pressed;
  final String title;

  AnswerBtn(this.pressed, this.title);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        // textColor: Colors.white,
        // color: Colors.purple.shade700,
        style: ElevatedButton.styleFrom(
            primary: Colors.purple.shade700, onPrimary: Colors.white),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: pressed,
      ),
    );
  }
}
