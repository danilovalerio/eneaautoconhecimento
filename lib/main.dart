import 'package:flutter/material.dart';

main() {
  runApp(AutoConhecimentoEneaApp());
}

class AutoConhecimentoEneaApp extends StatelessWidget {

  AutoConhecimentoEneaApp({Key? key}) : super(key: key);

  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('$perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];

    final double heightSized = 15;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(perguntaSelecionada)),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            SizedBox(height: heightSized),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            SizedBox(height: heightSized),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
            SizedBox(height: heightSized),
          ],
        ),
      ),
    );
  }
}
