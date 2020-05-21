import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalValue;
  final void Function() restartForm;

  Result(this.totalValue, this.restartForm);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Pontuação: ' + totalValue.toString(),
            style: TextStyle(fontSize: 28)
          )
        ),
        FlatButton(
          textColor: Colors.blue,
          child: Text(
            'REINICIAR',
            style: TextStyle(fontSize: 18)
          ),
          onPressed: restartForm,
        )
      ],
    );
  }
}