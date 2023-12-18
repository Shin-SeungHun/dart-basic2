import 'package:basic/23_12_18/reverse_string.dart';
import 'package:test/test.dart';

void main() {
  String s1 = 'hello';
  String s2 = 'world';
  test('olleh를 반환한다', () => expect(reverseString(s1), equals('olleh')));
  test('dlrow를 반환한다', () => expect(reverseString(s2), equals('dlrow')));
  test('dlrow를 반환한다', () => expect(reverseString(s1), equals('dlrow')));
}
