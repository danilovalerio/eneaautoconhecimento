import 'package:eneaautoconhecimento/question.dart';
import 'package:eneaautoconhecimento/quiz_widget.dart';
import 'package:eneaautoconhecimento/response_question.dart';
import 'package:eneaautoconhecimento/result_widget.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

main() {
  runApp(AutoConhecimentoEneaApp());
}

class AutoConhecimentoEneaApp extends StatefulWidget {
  AutoConhecimentoEneaApp({Key? key}) : super(key: key);

  @override
  State<AutoConhecimentoEneaApp> createState() =>
      _AutoConhecimentoEneaAppState();
}

class _AutoConhecimentoEneaAppState extends State<AutoConhecimentoEneaApp> {
  var _perguntaAtual = 0;
  var _pontuacaoTotal = 0;
  List<int> _pontuacaoEnea = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

  bool get temPerguntaSelecionada {
    print("$_perguntaAtual é menor que ${perguntas.length}");
    return (_perguntaAtual < perguntas.length - 12);
  }

  void _responder(int pontuacao) {
    print("tem pergunta atualmente: $temPerguntaSelecionada");
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaAtual++;
        _pontuacaoTotal += pontuacao;
        var somaValor = _pontuacaoEnea[pontuacao];
        _pontuacaoEnea[pontuacao] = somaValor + 1;
      });
    }
    print('pergunta selecionada: $_perguntaAtual');
    print('pontuacao total: $_pontuacaoTotal');
    print('Eneagrama: $_pontuacaoEnea');
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaAtual = 0;
      _pontuacaoTotal = 0;
      _pontuacaoEnea = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        body: temPerguntaSelecionada
            ? QuizWidget(
                perguntaSelecionada: _perguntaAtual,
                questions: perguntas,
                quandoResponder: _responder,
              )
            : ResultWidget(
                pontuacao: _pontuacaoTotal,
                restart: _reiniciarQuestionario,
                pontuacaoEnea: _pontuacaoEnea,
              ),
      ),
    );
  }
}
