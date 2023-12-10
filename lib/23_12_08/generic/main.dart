import 'strong_box.dart';

void main() {
  // KeyType 열거형의 각 값을 순회
  for (KeyType value in KeyType.values) {
    // 현재 KeyType에 대한 StrongBox 인스턴스 생성
    StrongBox strongBox = StrongBox(
      keyType: value,
      numberOfKeyUsage: 0,
    );

    // 0부터 1000000까지의 시도 횟수에 대해 반복
    for (int i = 0; i <= 1000000; i++) {
      // StrongBox의 get 메서드 호출
      KeyType? result = strongBox.get();

      // 만약 열쇠가 반환되면 (사용 횟수 제한을 초과하지 않은 경우)
      if (result != null) {
        // 결과 출력 및 사용 횟수 출력
        print('$result ${strongBox.numberOfKeyUsage - 1}');
        break;
      }
    }
  }
}