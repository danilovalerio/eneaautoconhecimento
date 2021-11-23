import 'package:flutter/material.dart';

const TextStyle titleText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.black,
);

const TextStyle subTitle = TextStyle(
  fontSize: 14,
  color: Colors.black,
);

const TextStyle subTitleBold = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 14,
  color: Colors.black,
);

const TextStyle textBodyOne = TextStyle(
  fontSize: 14,
  color: Colors.black,
);

final ButtonStyle styleBtnResponse = ElevatedButton.styleFrom(
  // visualDensity: VisualDensity(horizontal: 2.0, vertical: 2.0),
  padding: EdgeInsets.all(5),
  elevation: 12,
    textStyle: const TextStyle(
  fontSize: 16,
  color: Colors.white,
));
