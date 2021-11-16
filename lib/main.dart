import 'package:eneaautoconhecimento/question.dart';
import 'package:eneaautoconhecimento/quiz_widget.dart';
import 'package:eneaautoconhecimento/response_question.dart';
import 'package:eneaautoconhecimento/result_widget.dart';
import 'package:flutter/material.dart';

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
  var _perguntaSelecionada = 0;

  bool get temPerguntaSelecionada {
    print("$_perguntaSelecionada é menor que ${_perguntas.length}");
    return (_perguntaSelecionada + 1 < _perguntas.length);
  }

  /// Exemplo em json do Objeto
  /// {
  ///    'texto' : 'Qual seu sexo?',
  ///    'opcoes' : [
  ///        'opcao':'Masc',
  ///        'opcao':'Fem',
  ///        'opcao':'outro',
  ///     ]
  /// }
  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'preto', 'pontuacao': 10},
        {'texto': 'azul', 'pontuacao': 10},
        {'texto': 'rosa', 'pontuacao': 10},
        {'texto': 'vermelho', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'coelho', 'pontuacao': 10},
        {'texto': 'cobra', 'pontuacao': 10},
        {'texto': 'elefante', 'pontuacao': 10},
        {'texto': 'leão', 'pontuacao': 10},
      ],
    },
    {
      //chave texto e valor titulo
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'maria', 'pontuacao': 10},
        {'texto': 'joão', 'pontuacao': 10},
        {'texto': 'antonio', 'pontuacao': 10},
        {'texto': 'luiz', 'pontuacao': 10},
      ],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
    print('pergunta selecionada: $_perguntaSelecionada');
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
                perguntaSelecionada: _perguntaSelecionada,
                questions: _perguntas,
                quandoResponder: _responder,
              )
            : const ResultWidget(),
      ),
    );
  }
}
