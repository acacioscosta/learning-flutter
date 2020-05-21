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
      'responses': ['Azul', 'Preto', 'Branco']
    },
    {
      'question': 'Qual seu animal favorito?',
      'responses': ['Cachorro', 'Gato', 'Cavalo']
    }
  ];

  void _reply() {
    if (hasQuestion) {
      setState(() => _questionSelected++);
    }
  }

  bool get hasQuestion => _questionSelected < _questions.length;

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
          : Result()
      ),
    );
  }
}