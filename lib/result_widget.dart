import 'package:eneaautoconhecimento/constants.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class ResultWidget extends StatelessWidget {
  final int pontuacao;
  final void Function() restart;
  final List<int> pontuacaoEnea;

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
    required this.pontuacaoEnea,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 20),
          // Text(
          //   fraseResultado.toUpperCase(),
          //   style: TextStyle(fontSize: 28),
          // ),
          // Text(
          //   'Total da sua pontuação foi: $pontuacao',
          //   style: TextStyle(fontSize: 28),
          // ),
          Text(
            'Seu E-tipo: ${resultsOptions[maiorValorLista(pontuacaoEnea)]}',
            style: TextStyle(fontSize: 28),
          ),
          Text(
            summaryList(title: "Enea", lista: pontuacaoEnea),
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
