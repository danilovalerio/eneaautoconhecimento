import 'package:eneaautoconhecimento/response_question.dart';
import 'package:flutter/material.dart';

class AnswersWidget extends StatelessWidget {
  final List<String> answers;
  final void Function() itemSelecionado;

  const AnswersWidget({Key? key, required this.answers, required this.itemSelecionado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...answers
            .map((item) => ResponseQuestionWidget(
                texto: item, quandoSelecionado: itemSelecionado))
            .toList(),
      ],
    );
  }
}
