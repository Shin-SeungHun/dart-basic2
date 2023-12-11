import 'dart:convert';
import 'dart:io';

import 'department.dart';
import 'employee.dart';

void main() {
  try {
    final Employee leader = Employee(name: '홍길동', age: 41);
    final Department department = Department(name: '총무과', leader: leader);

    final Map<String, dynamic> company = department.toJson();
    print('$company\n');
    final String json = jsonEncode(company);
    print('$json\n');

    final File companyFile = File('company.txt');
    companyFile.writeAsStringSync(json);
    print('데이터 직렬화 완료, company.txt파일 생성 완료');

    final String result = companyFile.readAsStringSync();
    print(result);
  } catch (e) {
    print('error: $e');
  }
}
