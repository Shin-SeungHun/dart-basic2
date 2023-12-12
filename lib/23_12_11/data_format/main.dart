import 'dart:convert';
import 'dart:io';

import 'department.dart';
import 'employee.dart';

void main() {
  try {
    final Employee leader = Employee(name: '홍길동', age: 41);
    final Department department = Department(name: '총무과', leader: leader);

    // 직렬화 JSON 형식의 문자열로 변환
    final String json = jsonEncode(department.toJson());
    print('데이터 직렬화 완료');
    print('$json\n');

    // 파일 쓰기
    final File companyFile = File('company.txt');
    companyFile.writeAsStringSync(json);
    print('company.txt파일 생성 완료');

    // 파일 읽기
    final String result = companyFile.readAsStringSync();
    print(result);
  } catch (e) {
    print('error: $e');
  }
} // main()
