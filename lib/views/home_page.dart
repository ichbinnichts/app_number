import 'package:app_number/components/app_bar_component.dart';
import 'package:app_number/components/main_button_component.dart';
import 'package:app_number/components/main_dialog_component.dart';
import 'package:app_number/components/main_text_component.dart';
import 'package:app_number/controllers/number_controller.dart';
import 'package:app_number/models/number.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String paridade = 'par';

  void module() {
    setState(() {
      paridade = NumberController.instance.module();
    });
  }

  void add5() {
    setState(() {
      NumberController.instance.add(5);
    });
  }

  void subtract5() {
    setState(() {
      NumberController.instance.subtract(5);
    });
  }

  void multiply2() {
    setState(() {
      NumberController.instance.multiply(2);
    });
  }

  Future<void> _showDialog(
      String title, String buttonText, String contentText) async {
    return showDialog<void>(
      context: context,
      builder: ((BuildContext context) => mainDialog(
          title: title,
          buttonText: buttonText,
          contentText: contentText,
          ctx: context)),
    );
  }

  void reset() {
    if (Number.instance.getCounter() == 0) {
      _showDialog('Alerta', 'OK', 'Númeró já é zero');
      return;
    }
    setState(() {
      NumberController.instance.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    module();
    return Scaffold(
      appBar: appBar(Colors.green, '# App Numérico'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mainText(text: 'Número'),
            const SizedBox(
              height: 15,
            ),
            mainText(
              text: Number.instance.getCounter().toString(),
              fontSize: 50,
            ),
            const SizedBox(
              height: 15,
            ),
            mainText(text: 'Esse número é $paridade'),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mainButton(
                  text: '+5',
                  buttonColor: Colors.green,
                  buttonFunction: add5,
                ),
                const SizedBox(
                  width: 15,
                ),
                mainButton(
                  text: '-5',
                  buttonColor: Colors.red,
                  buttonFunction: subtract5,
                ),
                const SizedBox(
                  width: 15,
                ),
                mainButton(
                  text: 'x2',
                  buttonColor: Colors.grey,
                  buttonFunction: multiply2,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mainButton(
                      text: 'Zerar número',
                      buttonColor: Colors.yellow,
                      buttonFunction: reset,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
