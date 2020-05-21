import 'package:flutter/material.dart';
import './formQuestion.dart';
import './result.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {

  var _questionSelected = 0;
  final _questions = const [
    {
      'question': 'Qual sua cor favorita?',
      'responses': [
        { 'text': 'Azul', 'value': 10 },
        { 'text': 'Preto', 'value': 20 },
        { 'text': 'Branco', 'value': 30 }
      ]
    },
    {
      'question': 'Qual seu animal favorito?',
      'responses': [
        { 'text': 'Cachorro', 'value': 10 },
        { 'text': 'Gato', 'value': 20 },
        { 'text': 'Cavalo', 'value': 30 }
      ]
    }
  ];
  int totalValue = 0;

  void _reply(int value) {
    if (hasQuestion) {
      totalValue += value;
      setState(() => _questionSelected++);
    }
  }

  bool get hasQuestion => _questionSelected < _questions.length;

  void _restartForm() {
    setState(() {
      totalValue = 0;
      _questionSelected = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: hasQuestion
          ? FormQuestion(questionSelected: _questionSelected, questions: _questions, reply: _reply)
          : Result(totalValue, _restartForm)
      ),
    );
  }
}