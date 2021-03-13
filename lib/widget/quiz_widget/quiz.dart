import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({ 
    @required this.questions, 
    @required this.answerQuestion,
    @required this.questionIndex
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: double.infinity,
          margin: EdgeInsets.only(top: 100, bottom: 0),
          padding: EdgeInsets.all(10),
          child: Question(
            questions[questionIndex]['questionText'],
          ),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer( () => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
