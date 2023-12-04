class Person {
  String _name; // 이름

  Person({
    required String name,
  }) : _name = name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Person{_name: $_name}';
  }
}
