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

  test('two numbers comma separated returns sum', () {
    final sc = StringCalculator();
    expect(sc.add('1,2'), equals(3));
  });

  test('unknown amount of numbers returns sum', () {
    final sc = StringCalculator();
    expect(sc.add('1,2,3,4'), equals(10));
  });

  test('new lines between numbers are allowed', () {
    final sc = StringCalculator();
    expect(sc.add('1\n2,3'), equals(6));
  });

  test('supports custom delimiter defined in header', () {
    final sc = StringCalculator();
    expect(sc.add('//;\n1;2'), equals(3));
  });

}
