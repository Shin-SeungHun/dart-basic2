enum KeyType {
  padlock(maxNumberOfKeyUsage: 1024),
  button(maxNumberOfKeyUsage: 10000),
  dial(maxNumberOfKeyUsage: 30000),
  finger(maxNumberOfKeyUsage: 1000000);

  final int maxNumberOfKeyUsage;

  const KeyType({
    required this.maxNumberOfKeyUsage,
  });
}

class StrongBox<E> {
  E? _item;
  KeyType _keyType;
  int _numberOfKeyUsage;

  StrongBox({
    required E? item,
    required KeyType keyType,
    required int numberOfKeyUsage,
  })  : _item = item,
        _keyType = keyType,
        _numberOfKeyUsage = numberOfKeyUsage;

  int get numberOfKeyUsage => _numberOfKeyUsage;

  set numberOfKeyUsage(int value) {
    _numberOfKeyUsage = value;
  }

  KeyType get keyType => _keyType;

  set keyType(KeyType value) {
    _keyType = value;
  }

  E? get item => _item;

  set item(E? value) {
    _item = value;
  }

  void put(E item) => _item = item;

  E? get() {
    numberOfKeyUsage++;
    switch (_keyType) {
      // enum 키 종류의 시도 제한 횟수 미달시 null, 초과시 item 리턴
      case KeyType.padlock:
        return (numberOfKeyUsage > KeyType.padlock.maxNumberOfKeyUsage)
            ? _item
            : null;
      case KeyType.button:
        return (numberOfKeyUsage > KeyType.button.maxNumberOfKeyUsage)
            ? _item
            : null;

      case KeyType.dial:
        return (numberOfKeyUsage > KeyType.dial.maxNumberOfKeyUsage)
            ? _item
            : null;

      case KeyType.finger:
        return (numberOfKeyUsage > KeyType.finger.maxNumberOfKeyUsage)
            ? _item
            : null;
    }
  }

  @override
  String toString() {
    return 'StrongBox{_item: $_item, _keyType: $_keyType, _numberOfKeyUsage: $_numberOfKeyUsage}';
  }
}
