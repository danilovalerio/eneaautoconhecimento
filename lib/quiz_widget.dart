import 'package:eneaautoconhecimento/question.dart';
import 'package:eneaautoconhecimento/response_question.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const QuizWidget({
    Key? key,
    required this.questions,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  bool get temPerguntaSelecionada {
    print("$perguntaSelecionada é menor que ${questions.length}");
    return (perguntaSelecionada < questions.length);
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        questions[perguntaSelecionada].cast()['respostas'];

    return Column(
      children: <Widget>[
        QuestionWidget(
            texto: questions[perguntaSelecionada]['texto'].toString()),
        SizedBox(height: 15),

        ///... Operador spread que coloca os elementos da lista respostas
        ...respostas.map((item) {
          return ResponseQuestionWidget(
              texto: item['texto'].toString(),
              quandoSelecionado: () => quandoResponder(int.parse(
                    item['pontuacao'].toString(),
                  )));
        }).toList(),
        Container(
          padding: EdgeInsets.all(12),
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Container(
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue
                  )
                ),
                child: LinearProgressIndicator(
                  value: (perguntaSelecionada/(questions.length))*1,
                  color: Colors.blue,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                  semanticsLabel: "Loading",
                  semanticsValue: 100.0.toStringAsFixed(2),
                ),
              ),
              Text("Preenchimento...",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
            ],
          ),
        ),
      ],
    );
  }
}
