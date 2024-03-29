import 'package:eneaautoconhecimento/constants.dart';
import 'package:eneaautoconhecimento/eneagrama_model.dart';
import 'package:eneaautoconhecimento/styles_theme.dart';
import 'package:eneaautoconhecimento/tipo_enea_widget.dart';
import 'package:eneaautoconhecimento/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

class ResultWidget extends StatefulWidget {
  final int pontuacao;
  final void Function() restart;
  final List<int> pontuacaoEnea;

  const ResultWidget({
    Key? key,
    required this.pontuacao,
    required this.restart,
    required this.pontuacaoEnea,
  }) : super(key: key);

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;

  String get fraseResultado {
    if (widget.pontuacao < 10) {
      return 'Você precisa melhorar!';
    } else {
      return 'Parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          RepaintBoundary(
            key: previewContainer,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  TipoEneagramaWidget(
                    eneagrama: EneagramaModel(
                      title: resultsOptions[maiorValorLista(widget.pontuacaoEnea)]
                          .title,
                      description:
                          resultsOptions[maiorValorLista(widget.pontuacaoEnea)]
                              .description,
                    ),
                  ),
                  const Text(
                    'Resumo da pontuação:',
                    style: subTitleBold,
                  ),
                  Text(
                    summaryList(title: "Enea", lista: widget.pontuacaoEnea),
                    style: subTitle,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //TODO: melhorar o nome e testar na web
              ShareFilesAndScreenshotWidgets().shareScreenshot(
                  previewContainer,
                  originalSize,
                  "Title",
                  "Name.png",
                  "image/png",
                  text: "Eneagrama compartilhado");
            },
            child: Text('Compartilhar'),
            style: styleBtnResponse,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: widget.restart,
            child: Text('Reiniciar'),
            style: styleBtnResponse,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
