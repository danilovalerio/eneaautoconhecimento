import 'dart:html';

import 'package:flutter/material.dart';

class ResponseQuestionWidget extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const ResponseQuestionWidget(
      {Key? key, required this.texto, required this.quandoSelecionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.white,
    ));

    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
