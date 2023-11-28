void main() {
  List<String> players = ['player1', 'player2', 'player3', 'player4'];
  int currentPlayerIndex = 0;
  List<int> clapCountsByPlayer = [0, 0, 0, 0];
  String? mostClapsPlayer;
  int mostClaps = 0;

  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;

  for (int i = 1; i <= 100; i++) {
    String output = '';

    if (i % 30 == 0) {
      output += 'ahh';
      ahhCount++;
    } else if (i % 3 == 0) {
      output += 'clap';
      clapCount++;
      clapCountsByPlayer[currentPlayerIndex]++;
      // 가장 많은 clap을 한 플레이어 업데이트
      if (clapCountsByPlayer[currentPlayerIndex] > mostClaps) {
        mostClaps = clapCountsByPlayer[currentPlayerIndex];
        mostClapsPlayer = players[currentPlayerIndex];
      }
    } else if (i % 10 == 0) {
      output += 'rool';
      roolCount++;
    }

    if (output.isEmpty) {
      output = i.toString();
    }

    String player = players[(i - 1) % players.length];
    print('$player: $output');

    // 플레이어 인덱스 업데이트
    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
  }

  print('');
  print('clap의 총 개수: $clapCount');
  print('rool의 총 개수: $roolCount');
  print('ahh의 총 개수: $ahhCount');

  // 각 플레이어의 clap 횟수 출력
  for (int i = 0; i < players.length; i++) {
    print('${players[i]}의 clap 횟수: ${clapCountsByPlayer[i]}');
  }

  // 가장 많은 clap을 한 플레이어 출력
  print('가장 많은 clap을 한 플레이어: $mostClapsPlayer (${mostClaps}회)');
}
