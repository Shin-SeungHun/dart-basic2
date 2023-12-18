import 'package:basic/23_12_18/even.dart';
import 'package:test/test.dart';

void main() {
  test('짝수일 경우 true를 반환', () => expect(isEven(4), true));
  test('홀수일 경우 false를 반환', () => expect(isEven(3), false));
}
