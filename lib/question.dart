import 'package:eneaautoconhecimento/styles_theme.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String texto;

  const QuestionWidget({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: titleText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
