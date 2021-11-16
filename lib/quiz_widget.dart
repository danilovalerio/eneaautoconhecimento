import 'package:eneaautoconhecimento/question.dart';
import 'package:eneaautoconhecimento/response_question.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  const QuizWidget({
    Key? key,
    required this.questions,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  bool get temPerguntaSelecionada {
    print("$perguntaSelecionada é menor que ${questions.length}");
    return (perguntaSelecionada + 1 < questions.length);
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = questions[perguntaSelecionada].cast()['respostas'];

    return Column(
      children: <Widget>[
        QuestionWidget(
            texto: questions[perguntaSelecionada]['texto'].toString()),
        SizedBox(height: 15),

        ///... Operador spread que coloca os elementos da lista respostas
        ...respostas
            .map((item) => ResponseQuestionWidget(
                texto: item, quandoSelecionado: quandoResponder))
            .toList(),
      ],
    );
  }
}
