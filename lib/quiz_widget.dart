import 'package:eneaautoconhecimento/answers_widget.dart';
import 'package:eneaautoconhecimento/question.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String titleQuestion;
  final List<String> optionsAnswers;
  final void Function() itemSelecionado;

  const QuizWidget({
    Key? key,
    required  this.titleQuestion,
    required this.optionsAnswers,
    required this.itemSelecionado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuestionWidget(texto: titleQuestion),
        SizedBox(height: 15),
        AnswersWidget(answers: optionsAnswers, itemSelecionado: itemSelecionado,),
      ],
    );
  }
}
