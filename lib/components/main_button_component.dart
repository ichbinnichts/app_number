import 'package:flutter/material.dart';

OutlinedButton mainButton({
  String text = '',
  Function()? buttonFunction,
  Color buttonColor = Colors.black,
  Color textColor = Colors.white,
}) {
  return OutlinedButton(
    onPressed: buttonFunction,
    child: Text(text),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        foregroundColor: MaterialStatePropertyAll(textColor),
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        )),
  );
}
