import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {

  final String texto;

  const QuestionWidget({Key? key, required this.texto}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
