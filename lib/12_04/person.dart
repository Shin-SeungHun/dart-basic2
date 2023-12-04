class Person {
  String _name; // 이름
  int _age;

  Person({
    required String name,
    required int age,
  })  : _name = name,
        _age = age;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  @override
  String toString() {
    return 'Person{_name: $_name, _age: $_age}';
  }
}
