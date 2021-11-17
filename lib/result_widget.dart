import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final int pontuacao;
  final void Function() restart;

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Você precisa melhorar!';
    } else {
      return 'Parabéns!';
    }
  }

  const ResultWidget({
    Key? key,
    required this.pontuacao,
    required this.restart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            fraseResultado.toUpperCase(),
            style: TextStyle(fontSize: 28),
          ),
          Text(
            'Total da sua pontuação foi: $pontuacao',
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: restart,
            child: Text('Reiniciar'),
          ),
        ],
      ),
    );
  }
}
