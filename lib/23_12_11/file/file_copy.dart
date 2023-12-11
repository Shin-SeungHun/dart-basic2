import 'dart:io';

void main() {
  // 파일 열기
  final File file = File('text.txt');

  // 내용 쓰기
  file.writeAsStringSync('Hello dart');

  try {
    final text = file.readAsStringSync();
    print(text);
  } catch (e) {
    print('no file : $e');
  }

  // 파일 복사
  final String sourcePath = 'text.txt';
  final String targetPath = 'copy_of_text.txt';
  copy(sourcePath, targetPath);

  // 복사한 파일 읽기
  final File copiedFile = File(targetPath);

  // 복사한 파일에 누적해서 내용 쓰기
  copiedFile.writeAsStringSync(', copy file of dart', mode: FileMode.append);

  final String copiedText = copiedFile.readAsStringSync();
  print('복사된 파일 내용: $copiedText');
}

// 파일을 복사하는 함수를 작성
void copy(String source, String target) {
  final File sourceFile = File(source);
  final File targetFile = File(target);

  final String content = sourceFile.readAsStringSync();
  targetFile.writeAsStringSync(content);
  print('파일이 성공적으로 복사되었습니다.');
}
