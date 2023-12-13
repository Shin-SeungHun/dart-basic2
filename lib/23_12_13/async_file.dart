import 'dart:io';

void main() async {
  await modifyCsvFile();
}

Future<void> modifyCsvFile() async {
  try {
    File csvFile = File('sample.csv');
    await csvFile.writeAsString('1,홍길동,30\n2,한석봉,20\n');

    print('파일 쓰기가 완료되었습니다.');
    String sampleCsv = await csvFile.readAsString();

    print('sample.csv:');
    print(sampleCsv);

    // sample_copy.csv 파일 생성 및 내용 복사
    File copyCsvFile = File('sample_copy.csv');
    await copyCsvFile.writeAsString(sampleCsv);

    String sampleCopyCsv = await copyCsvFile.readAsString();
    print(sampleCopyCsv);

    // 한석봉을 김석봉으로 변경
    sampleCopyCsv = sampleCopyCsv.replaceAll('한석봉', '김석봉');
    print(sampleCopyCsv);

    // 수정된 내용을 sample_copy.csv 파일에 쓰기
    await copyCsvFile.writeAsString(sampleCopyCsv);
    print('파일 쓰기가 완료되었습니다.');

    print('sample_copy.csv:');
    print(sampleCopyCsv);
  } catch (e) {
    print('error: $e');
  }
}
