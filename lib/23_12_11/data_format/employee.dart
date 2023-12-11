class Employee {
  String _name;
  int _age;

  Employee({
    required String name,
    required int age,
  })  : _name = name,
        _age = age;

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Map<String, dynamic> toJson() {
    return {
      '_name': _name,
      '_age': _age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['_name'] as String,
      age: map['_age'] as int,
    );
  }

  @override
  String toString() {
    return 'Employee{_name: $_name, _age: $_age}';
  }
}
