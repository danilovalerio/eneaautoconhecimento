import 'package:eneaautoconhecimento/eneagrama_model.dart';
import 'package:eneaautoconhecimento/styles_theme.dart';
import 'package:flutter/material.dart';

class TipoEneagramaWidget extends StatelessWidget {
  final EneagramaModel eneagrama;

  const TipoEneagramaWidget({
    Key? key,
    required this.eneagrama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Centralizar o título e justificar o description
    return Column(children: <Widget>[
      RichText(
        text: TextSpan(children: [
          TextSpan(
            text: '${eneagrama.title}\n',
            style: title,
          ),
          TextSpan(
            text: eneagrama.description,
            style: textOne,
          ),
        ]),
        textAlign: TextAlign.justify,
      ),
    ]);
  }
}
