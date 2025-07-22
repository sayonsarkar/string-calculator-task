import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(add(''), 0);
  });

  test('single number returns the number itself', () {
    expect(add('1'), 1);
  });

  test('two numbers separated by comma returns their sum', () {
    expect(add('1,2'), 3);
  });

  test('multiple numbers separated by comma returns their sum', () {
    expect(add('1,2,3,4,5'), 15);
  });

  test('numbers separated by newlines returns their sum', () {
    expect(add('1\n2,3'), 6);
  });

  test('custom delimiter returns their sum', () {
    expect(add('//;\n1;2'), 3);
  });

  test('negative number throws exception', () {
    expect(() => add('-1,2'), throwsException);
  });
}
