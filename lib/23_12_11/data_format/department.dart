import 'employee.dart';

class Department {
  String _name;
  Employee _leader;

  Department({
    required String name,
    required Employee leader,
  })  : _name = name,
        _leader = leader;

  Employee get leader => _leader;

  set leader(Employee value) {
    _leader = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Map<String, dynamic> toJson() {
    return {
      '_name': _name,
      '_leader': _leader,
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['_name'] as String,
      leader: map['_leader'] as Employee,
    );
  }

  @override
  String toString() {
    return 'Department{_name: $_name, _leader: $_leader}';
  }
}
