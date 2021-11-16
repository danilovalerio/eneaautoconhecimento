import 'package:eneaautoconhecimento/question.dart';
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
    return (_perguntaSelecionada+1 < _perguntas.length);
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
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      //chave texto e valor titulo
      'texto': 'Qual seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Antonio', 'Luiz'],
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
    List<String> respostas =
        _perguntas[_perguntaSelecionada].cast()['respostas'];

    ///Para transformar listas utilizamos o MAP, para cada resposta retorna um ResponseQuestionWidget
    // List<Widget> widgets = respostas
    //     .map((item) =>
    //         ResponseQuestionWidget(texto: item, quandoSelecionado: _responder))
    //     .toList();

    //Programação imperativa
    // for(var textoResp in respostas) {
    //   print(textoResp);
    //   widgets.add(ResponseQuestionWidget(texto: textoResp, quandoSelecionado: _responder));
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  QuestionWidget(
                      texto:
                          _perguntas[_perguntaSelecionada]['texto'].toString()),
                  SizedBox(height: 15),
                  //TODO: Criar widget resposta
                  // for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
                  //   respostas.add(ResponseQuestionWidget(texto: textoResp, quandoSelecionado: _responder))
                  // }
                  ///... Operador spread que coloca os elementos da lista respostas
                  ...respostas
                      .map((item) => ResponseQuestionWidget(
                          texto: item, quandoSelecionado: _responder))
                      .toList(),
                ],
              )
            : const ResultWidget(),
      ),
    );
  }
}
