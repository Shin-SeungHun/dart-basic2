void main() {
  final numString = '10.5';
  int num;
  try {
    // 에러가 날 것 같은 코드 작성
    num = int.parse(numString);
    print(num);
  } catch (e) {
    // e : 에러의 정보를 담고 있는 객체
    print('예외 발생 num을 0으로 처리 : $e');
    num = 0;
    print(num);
  }

  print(num);
}
