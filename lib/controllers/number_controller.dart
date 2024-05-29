import 'package:app_number/models/number.dart';

class NumberController {
  static final NumberController instance = NumberController._();

  NumberController._();

  void add(int value) {
    Number.instance.setCounter(Number.instance.getCounter() + value);
  }

  void subtract(int value) {
    Number.instance.setCounter(Number.instance.getCounter() - value);
  }

  void multiply(int value) {
    Number.instance.setCounter(Number.instance.getCounter() * value);
  }

  void reset() {
    Number.instance.setCounter(0);
  }

  String module() {
    if (Number.instance.getCounter() % 2 == 0) {
      return 'par';
    } else {
      return 'ímpar';
    }
  }
}
