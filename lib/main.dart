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
    final double heightSized = 15;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(_perguntaSelecionada)),
            SizedBox(height: heightSized),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
            SizedBox(height: heightSized),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
            SizedBox(height: heightSized),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
            SizedBox(height: heightSized),
          ],
        ),
      ),
    );
  }
}
