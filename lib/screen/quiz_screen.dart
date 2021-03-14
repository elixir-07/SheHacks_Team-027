import 'package:flutter/material.dart';
import 'package:xyz/screen/matched_screen.dart';

import '../widget/quiz_widget/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = const [
    {
      'questionText': 'How do your friends describe you?',
      'answers': [
        {'text': 'Weird', 'score': 1},
        {'text': 'Smart', 'score': 5},
        {'text': 'Energetic', 'score': 3},
        {'text': 'Adventurous', 'score': 4}
      ],
    },
    {
      'questionText': 'Do you like to work?',
      'answers': [
        {'text': 'Yeah, usually', 'score': 2},
        {'text': 'Only for money', 'score': 4},
        {'text': 'Nope', 'score': 1},
        {'text': 'Yes !!', 'score': 5},
      ],
    },
    {
      'questionText': 'What do you like to do on weekend ?',
      'answers': [
        {'text': 'Cook', 'score': 5},
        {'text': 'Sleep', 'score': 4},
        {'text': 'Go out or party', 'score': 5},
        {'text': 'Binge watch', 'score': 3},
      ],
    },
    {
      'questionText': 'Relationship status?',
      'answers': [
        {'text': 'Not intrested', 'score': 5},
        {'text': 'Only crush', 'score': 3},
        {'text': 'In a healthy relationship', 'score': 5},
        {'text': 'It\'s complcated', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you like pets?',
      'answers': [
        {'text': 'Yes! they are cute', 'score': 4},
        {'text': 'NO!!', 'score': 1},
        {'text': 'Like them, but don\'t have time', 'score': 3},
        {'text': 'Obvioulsy. I love them', 'score': 5},
      ],
    },
    {
      'questionText': 'What interests you?',
      'answers': [
        {'text': 'Nature', 'score': 5},
        {'text': 'I\'m up for anything', 'score': 5},
        {'text': 'Horror movies', 'score': 4},
        {'text': 'Social media world', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  // void _resetQuiz() {
  //   _questionIndex = 0;

  // }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print(' No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : MatchedScreen(),
      // Result(_totalScore),
    );
  }
}
