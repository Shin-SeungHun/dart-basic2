import 'package:collection/collection.dart';

void main() {
  List<int> list = [2, 5, 1, 9, 3];
  print(findMax(list));
}

int findMax(List<int> list) {
  int l = list.map((e) => e).max;
  return l;
}
