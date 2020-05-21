import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final String _text = 'The end!';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          _text,
          style: TextStyle(fontSize: 28)
        ),
      ),
    );
  }
}