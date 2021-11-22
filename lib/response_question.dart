
import 'package:eneaautoconhecimento/styles_theme.dart';
import 'package:flutter/material.dart';

class ResponseQuestionWidget extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const ResponseQuestionWidget(
      {Key? key, required this.texto, required this.quandoSelecionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
        style: styleBtnResponse,
      ),
    );
  }
}
