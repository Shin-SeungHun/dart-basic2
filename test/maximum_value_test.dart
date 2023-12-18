import 'package:basic/23_12_18/maximum_value.dart';
import 'package:test/test.dart';

void main() {
  List<int> list1 = [2, 5, 1, 9, 3];
  List<int> list2 = [1, 10, 8, 7, 6];

  test('최대값을 반환', () => expect(findMax(list1), equals(9)));
  test('최대값을 반환', () => expect(findMax(list2), equals(10)));
  test('최대값을 반환', () => expect(findMax(list1), equals(11)));
}
