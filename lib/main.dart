import 'package:flutter/material.dart';
import './question.dart';
import './response.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      {
        'question': 'Qual sua cor favorita?',
        'responses': ['Azul', 'Preto', 'Branco']
      },
      {
        'question': 'Qual seu animal favorito?',
        'responses': ['Cachorro', 'Gato', 'Cavalo']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['responses'];
    List<Widget> widgets = respostas
      .map((e) => Response(e, _responder))
      .toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: Column(
          children: [
            Question(perguntas[_perguntaSelecionada]['question']),
            ...widgets
          ],
        ),
      ),
    );
  }
}