import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {
  test('empty input returns 0',(){
    final sc = StringCalculator();
    expect(sc.add(''),0);
  });

  test('single number returns the number', () {
    final sc = StringCalculator();
    expect(sc.add('1'), equals(1));
  });

}
