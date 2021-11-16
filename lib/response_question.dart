import 'package:flutter/material.dart';

class ResponseQuestionWidget extends StatelessWidget {
  final String texto;

  const ResponseQuestionWidget({Key? key, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text(texto),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
