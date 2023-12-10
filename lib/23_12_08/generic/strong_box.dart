enum KeyType {
  padlock,
  button,
  dial,
  finger;
}

class StrongBox<E extends KeyType> {
  KeyType _keyType;
  int _numberOfKeyUsage;

  StrongBox({
    required KeyType keyType,
    required int numberOfKeyUsage,
  })  : _keyType = keyType,
        _numberOfKeyUsage = numberOfKeyUsage;

  int get numberOfKeyUsage => _numberOfKeyUsage;

  set numberOfKeyUsage(int value) {
    _numberOfKeyUsage = value;
  }

  KeyType get keyType => _keyType;

  set keyType(KeyType value) {
    _keyType = value;
  }

  // 인스턴스를 저장한다.
  void put(KeyType keyType) => _keyType = keyType;

  // 인스턴스를 얻을 수 있다.
  KeyType? get() {
    numberOfKeyUsage++;
    switch (_keyType) {
      case KeyType.padlock:
        // 열쇠의 사용 횟수에 도달하기 전에는 null, 초과하면 키 종류를 리턴한다.
        return (numberOfKeyUsage > 1024) ? _keyType : null;
      case KeyType.button:
        return (numberOfKeyUsage > 10000) ? _keyType : null;
      case KeyType.dial:
        return (numberOfKeyUsage > 30000) ? _keyType : null;
      case KeyType.finger:
        return (numberOfKeyUsage > 1000000) ? _keyType : null;
    }
  }
}


