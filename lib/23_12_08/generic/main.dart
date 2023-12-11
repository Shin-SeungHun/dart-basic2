import 'strong_box.dart';

void main() {
  // padlock
  final StrongBox<String> padlockBox =
      StrongBox(item: '금고 아이템', keyType: KeyType.padlock, numberOfKeyUsage: 0);
  padlockBox.put('padlock');
  for (int i = 0; i <= 1025; i++) {
    var result = padlockBox.get();
    if (result != null) {
      print('$result ${padlockBox.numberOfKeyUsage}');
      break;
    }
  }

  // button
  final StrongBox<String> buttonBox =
      StrongBox(item: '금고 아이템', keyType: KeyType.button, numberOfKeyUsage: 0);
  buttonBox.put('button');

  for (int i = 0; i < 10001; i++) {
    var result = buttonBox.get();
    if (result != null) {
      print('$result ${buttonBox.numberOfKeyUsage}');
      break;
    }
  }

  // dial
  final StrongBox<String> dialBox =
      StrongBox(item: '금고 아이템', keyType: KeyType.dial, numberOfKeyUsage: 0);
  dialBox.put('dial');

  for (int i = 0; i < 30001; i++) {
    var result = dialBox.get();
    if (result != null) {
      print('$result ${dialBox.numberOfKeyUsage}');
      break;
    }
  }

  // finger
  final StrongBox<String> fingerBox =
      StrongBox(item: '금고 아이템', keyType: KeyType.finger, numberOfKeyUsage: 0);
  fingerBox.put('finger');

  for (int i = 0; i < 1000001; i++) {
    var result = fingerBox.get();
    if (result != null) {
      print('$result ${fingerBox.numberOfKeyUsage}');
      break;
    }
  }

  print('');

  // 전체 순회해서 출력하기
  for (KeyType value in KeyType.values) {
    StrongBox strongBox =
        StrongBox<String>(item: '돈', keyType: value, numberOfKeyUsage: 0);

    for (int i = 0; i < 1000001; i++) {
      var result = strongBox.get();
      if (result != null) {
        print('$result ${strongBox.numberOfKeyUsage}');
        break;
      }
    }
  }
}
