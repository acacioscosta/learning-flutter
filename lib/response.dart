import 'package:flutter/material.dart';

class Response extends StatelessWidget {

  final String _text;
  final void Function() _press;

  Response(this._text, this._press);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(_text),
        onPressed: _press,
      ),
    );
  }
}