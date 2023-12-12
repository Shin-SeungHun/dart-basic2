import 'dart:convert';
import 'dart:io';

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
      'name': _name,
      'age': _age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  @override
  String toString() {
    return 'Employee{name: $_name, age: $_age}';
  }
} // class Employee

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
      'name': _name,
      'leader': _leader,
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'] as String,
      leader: map['leader'] as Employee,
    );
  }

  @override
  String toString() {
    return 'Department{name: $_name, leader: $_leader}';
  }
} // class Department

void main() {
  try {
    final Employee leader = Employee(name: '홍길동', age: 41);
    final Department department = Department(name: '총무과', leader: leader);

    // 직렬화 JSON 형식의 문자열로 변환
    final String json = jsonEncode(department.toJson());
    print('$json\n');

    // 파일 쓰기
    final File companyFile = File('company.txt');
    companyFile.writeAsStringSync(json);
    print('데이터 직렬화 완료, company.txt파일 생성 완료');

    // 파일 읽기
    final String result = companyFile.readAsStringSync();
    print(result);
  } catch (e) {
    print('error: $e');
  }
} // main()
