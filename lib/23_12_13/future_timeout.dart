void main() async {
  await timeoutFuture().timeout(
    Duration(seconds: 5), // timeoutFuture() 함수의 초가 5초가 넘으면 timeout 반환
    onTimeout: () {
      // print('timeout');
      //  타임아웃 상황을 처리
      return 'timeout';
    },
  ).then((result) {
    print(result);
    // 미래가 완료된 후 결과를 처리합니다 (원래 결과이거나 'timeout' 예시 값).
  });
}

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}
