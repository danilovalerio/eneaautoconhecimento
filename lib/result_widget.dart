import 'package:eneaautoconhecimento/constants.dart';
import 'package:eneaautoconhecimento/eneagrama_model.dart';
import 'package:eneaautoconhecimento/styles_theme.dart';
import 'package:eneaautoconhecimento/tipo_enea_widget.dart';
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
          TipoEneagramaWidget(eneagrama: EneagramaModel(
            title: resultsOptions[maiorValorLista(pontuacaoEnea)].title,
            description: resultsOptions[maiorValorLista(pontuacaoEnea)].description,
          )),
          const Text(
            'Resumo da pontuação:',
            style: subTitleBold,
          ),
          Text(
            summaryList(title:"Enea", lista: pontuacaoEnea),
            style: subTitle,
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
