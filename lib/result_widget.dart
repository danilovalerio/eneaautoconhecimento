import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {

  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 30) {
      return 'Você precisa melhorar!';
    } else {
      return 'Parabéns!';
    }
  }

  const ResultWidget({Key? key, required this.pontuacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
