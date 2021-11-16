import 'package:eneaautoconhecimento/question.dart';
import 'package:eneaautoconhecimento/response_question.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AutoConhecimentoEneaApp());
}

class AutoConhecimentoEneaApp extends StatefulWidget {

  AutoConhecimentoEneaApp({Key? key}) : super(key: key);

  @override
  State<AutoConhecimentoEneaApp> createState() => _AutoConhecimentoEneaAppState();
}

class _AutoConhecimentoEneaAppState extends State<AutoConhecimentoEneaApp> {
  var _perguntaSelecionada = 0;
  final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];

  void _responder() {
    setState(() {
      if(_perguntaSelecionada+1 < perguntas.length) {
        _perguntaSelecionada++;
      }
    });
    print('$_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        body: Column(
          children: [
            QuestionWidget(texto: perguntas.elementAt(_perguntaSelecionada)),
            SizedBox(height: 15),
            //TODO: Criar widget resposta
            ResponseQuestionWidget(texto: 'Resposta 1', quandoSelecionado: _responder,),
            ResponseQuestionWidget(texto: 'Resposta 2', quandoSelecionado: _responder,),
            ResponseQuestionWidget(texto: 'Resposta 3', quandoSelecionado: _responder,),
          ],
        ),
      ),
    );
  }
}
