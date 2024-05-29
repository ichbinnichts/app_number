import 'package:flutter/material.dart';

Text mainText({
  String text = '',
  int fontSize = 20,
}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize.toDouble()),
  );
}
