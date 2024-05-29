import 'package:flutter/material.dart';

AlertDialog mainDialog({
  String title = '',
  String contentText = '',
  String buttonText = '',
  required BuildContext ctx,
}) {
  return AlertDialog(
    title: Text(title),
    content: SingleChildScrollView(
      child: ListBody(
        children: [
          Text(contentText),
        ],
      ),
    ),
    actions: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Text(buttonText))
    ],
  );
}
