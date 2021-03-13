import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.all(10),
      // ignore: deprecated_member_use
      child: RaisedButton(
          color: Colors.blue[200],
          textColor: Colors.black87,
          child: Text(answerText,
          style: TextStyle(
            fontSize: 16,
          ),
          ),
          onPressed: selectHandler),
    );
  }
}
