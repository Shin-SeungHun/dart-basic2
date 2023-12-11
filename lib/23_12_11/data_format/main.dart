import 'dart:convert';
import 'dart:io';

import 'department.dart';
import 'employee.dart';

void main() {
  Employee leader = Employee(name: '홍길동', age: 41);
  Department department = Department(name: '총무부', leader: leader);

  Map<String, dynamic> company = department.toJson();
  print('$company\n');

  // JSON 형식의 문자열로 변환
  String json = jsonEncode(company);
  print('$json\n');

  File companyFile = File('company.txt');
  companyFile.writeAsStringSync(json);

  print('데이터 직렬화 완료, company.txt파일 생성 완료');

  String result = companyFile.readAsStringSync();
  print(result);
}
