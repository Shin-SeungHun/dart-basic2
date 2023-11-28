///  4명의 플레이어가 참가
///  플레이어는 차례대로 순서가 돌아가며
///  30의 배수는 ahh 출력
///  3의 배수에는 clap 출력
///  10의 배수는 rool을
///  나머지는 숫자를 출력
///
///  범위 : 1에서 100까지
///
///  clap, rool, ahh 각각의 총 개수 출력
///  각각의 플레이어들이 clap을 몇 번 했는지 출력
///  가장 많은 clap을 한 player를 출력

void main() {
  // 4명의 플레이어 리스트
  List<String> players = List.generate(4, (int index) {
    return 'player${index + 1}';
  });
  // List<String> players = List.generate(4, (index) => 'player${index + 1}');

  int playerIndex = 0; // 플레이어 인덱스 저장하는 변수

  // List<int> clapCounts_Player = [0, 0, 0, 0]; // 각 플레이어의 clap횟수 저장하는 리스트
  List<int> clapCountsPlayer =
      List.filled(players.length, 0, growable: true); // players의 리스트 크기가 변경된다면 자동으로 리스트의 크기가 조정, growable이 true일 경우 목록 동적 크기 조절, flase일 경우 크기 조절 x

  String? maxClapsPlayer; // 가장 많이 clap한 플레이어를 저장하는 변수

  int maxClaps = 0; // 가장 많은 clap 횟수 저장하는 변수

  // clap, rool, ahh 각각의 전체 횟수 저장하는 변수
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;

  // 1~100까지 반복
  for (int i = 1; i <= 100; i++) {
    String output = '';

    // 30의 배수
    if (i % 30 == 0) {
      output += 'ahh';
      ahhCount++; // 횟수 카운트
    } else if (i % 3 == 0) {
      // 3의 배수
      output += 'clap';
      clapCount++; // 횟수 카운트

      clapCountsPlayer[playerIndex]++; // 현재 플레이어의 박수 횟수를 증가
      // 가장 많은 clap을 한 플레이어
      if (clapCountsPlayer[playerIndex] > maxClaps) {
        maxClaps = clapCountsPlayer[playerIndex];
        maxClapsPlayer = players[playerIndex];
      }
    } else if (i % 10 == 0) {
      // 10의 배수
      output += 'rool';
      roolCount++; // 횟수 카운트
    }

    // ahh, clap, rool이 아닐때는 숫자를 출력
    if (output.isEmpty) {
      output = i.toString();
    }

    String player = players[(i - 1) % players.length];
    print('$player: $output');

    // 플레이어 인덱스
    playerIndex = (playerIndex + 1) % players.length;
  }

  // clap, rool ahh 각각의 총 개수
  print('\nclap의 총 개수: $clapCount');
  print('rool의 총 개수: $roolCount');
  print('ahh의 총 개수: $ahhCount\n');

  // 각 플레이어의 clap 횟수 출력
  for (int i = 0; i < players.length; i++) {
    print('${players[i]}의 clap 횟수: ${clapCountsPlayer[i]}');
  }


  // 가장 많은 clap을 한 플레이어 출력
  print('\n가장 많은 clap한 플레이어: $maxClapsPlayer');
}
