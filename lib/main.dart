import 'package:eneaautoconhecimento/quiz_widget.dart';
import 'package:eneaautoconhecimento/result_widget.dart';
import 'package:eneaautoconhecimento/styles_theme.dart';

import 'package:flutter/material.dart';
import 'constants.dart';

main() {
  runApp(AutoConhecimentoEneaApp());
}

class AutoConhecimentoEneaApp extends StatefulWidget {
  AutoConhecimentoEneaApp({Key? key}) : super(key: key);

  @override
  State<AutoConhecimentoEneaApp> createState() =>
      _AutoConhecimentoEneaAppState();
}

class _AutoConhecimentoEneaAppState extends State<AutoConhecimentoEneaApp> {
  static const valorAoEscolher = 1;
  var _perguntaAtual = 0;
  var _pontuacaoTotal = 0;
  List<int> _pontuacaoEnea = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  bool _iniciou = false;

  bool get temPerguntaSelecionada {
    print("$_perguntaAtual é menor que ${perguntas.length}");
    return (_perguntaAtual < perguntas.length - 12);
  }

  void _responder(int pontuacao) {
    print("tem pergunta atualmente: $temPerguntaSelecionada");
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaAtual++;
        _pontuacaoTotal += pontuacao;
        var somaValor = _pontuacaoEnea[pontuacao];
        _pontuacaoEnea[pontuacao] = somaValor + valorAoEscolher;
      });
    }
    print('pergunta selecionada: $_perguntaAtual');
    print('pontuacao total: $_pontuacaoTotal');
    print('Eneagrama: $_pontuacaoEnea');
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaAtual = 0;
      _pontuacaoTotal = 0;
      _pontuacaoEnea = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
      _iniciou = false;
    });
  }

  void _iniciarQuestionario() {
    print("Iniciar questionario...$_iniciou");
    setState(() {
      _iniciou = true;
    });
    print("Iniciar questionario...$_iniciou");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Conhecimento - Eneagrama'),
        ),
        /*body: TipoEneagramaWidget(
          eneagrama: EneagramaModel(
              title: "Meu título",
              description: "Minha descrição personalizada..."),
        ),*/
        body: !_iniciou
            ? Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: RichText(
                text: TextSpan(children: [
                    TextSpan(
                    text: 'TESTE DISTRIBUTIVO DO ENEAGRAMA\n\n',
                    style: titleText),
                    TextSpan(text: """
Este teste, mostrará a distribuição de suas orientações com relação a cada E-tipo (ego). \n
Nas perguntas a seguir, escolha apenas uma das alternativas, a que mais reflete sua maneira de ser.\n
Escolha a mais marcante ao longo da sua vida. Algo que seja mais significativo para você.\n
""",
                    style: textBodyOne),
                    TextSpan(
                        text: 'Observação:',
                        style: subTitle),
                    TextSpan(text: """
 Não há padrão no posicionamento das alternativas.\n
              """),
                    ]),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: _iniciarQuestionario,
                child: Text('INICIAR'),
              ),
            ),
          ],
        )
            : Scaffold(
          body: temPerguntaSelecionada
              ? QuizWidget(
            perguntaSelecionada: _perguntaAtual,
            questions: perguntas,
            quandoResponder: _responder,
          )
              : ResultWidget(
            pontuacao: _pontuacaoTotal,
            restart: _reiniciarQuestionario,
            pontuacaoEnea: _pontuacaoEnea,
          ),
        ),
      ),
    );
  }
}
