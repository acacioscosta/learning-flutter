import 'package:flutter/material.dart';
import './question.dart';
import './response.dart';

class FormQuestion extends StatelessWidget {

  final int questionSelected;
  final List<Map<String, Object>> questions;
  final void Function(int) reply;

  FormQuestion({
    @required this.questionSelected,
    @required this.questions,
    @required this.reply
  });

  bool get hasQuestion => questionSelected < questions.length;

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> responses = hasQuestion
      ? questions[questionSelected]['responses']
      : null;

    return Column(
      children: <Widget>[
        Question(questions[questionSelected]['question']),
        ...responses.map((e) => Response(e['text'], () => reply(e['value']))).toList()
      ],
    );
  }
}