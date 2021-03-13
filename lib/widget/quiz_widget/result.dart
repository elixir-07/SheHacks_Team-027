import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  // final Function resetHandler;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) 
      resultText = "You are awesome!";
    
    else if (resultScore <= 12) 
      resultText = 'You are pretty ';
    
    else if (resultScore <= 16) 
      resultText = 'You are gooood!';
    
    else 
      resultText = "We have recieved your answers!";
    
    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            // color: Colors.blue[200],
          ),
          
        ],
      ),
    );
  }
}
