import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Parabéns!',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
