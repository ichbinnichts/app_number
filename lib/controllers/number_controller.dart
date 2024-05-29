import 'package:app_number/models/number.dart';

class NumberController {
  static final NumberController instance = NumberController._();

  NumberController._();

  void increment() {
    Number.instance.setCounter(Number.instance.getCounter() + 1);
  }

  void decrement() {
    Number.instance.setCounter(Number.instance.getCounter() - 1);
  }

  void reset() {
    Number.instance.setCounter(0);
  }
}
