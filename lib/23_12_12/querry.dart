import 'package:collection/collection.dart';

class Trader {
  String _name;
  String _city;

  Trader({
    required String name,
    required String city,
  })  : _name = name,
        _city = city;

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Trader{name: $_name, city: $_city}';
  }
}

class Transaction {
  Trader _trader;
  int _year;
  int _value;

  Transaction({
    required Trader trader,
    required int year,
    required int value,
  })  : _trader = trader,
        _year = year,
        _value = value;

  int get value => _value;

  set value(int value) {
    _value = value;
  }

  int get year => _year;

  set year(int value) {
    _year = value;
  }

  Trader get trader => _trader;

  set trader(Trader value) {
    _trader = value;
  }

  @override
  String toString() {
    return 'Transaction{trader: $_trader, year: $_year, value: $_value}';
  }
}

final List<Transaction> transactions = [
  Transaction(trader: Trader(name: "Brian", city: "Cambridge"), year: 2011, value: 300),
  Transaction(trader: Trader(name: "Raoul", city: "Cambridge"), year: 2012, value: 1000),
  Transaction(trader: Trader(name: "Raoul", city: "Cambridge"), year: 2011, value: 400),
  Transaction(trader: Trader(name: "Mario", city: "Milan"), year: 2012, value: 710),
  Transaction(trader: Trader(name: "Mario", city: "Milan"), year: 2012, value: 700),
  Transaction(trader: Trader(name: "Alan", city: "Cambridge"), year: 2012, value: 950),
];

void main() {
  /// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print(transactions
      .where((e) => e.year == 2011)
      .toList()
      // sorted() 새로운 데이터 객체 리턴
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .toSet()
      .toList()); // Brian , Raoul

  /// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  print(transactions
          .map((e) => e.trader.city)
          .toSet() // 중복 제거
          .toList() // Set을 다시 List로 변환
      ); // Cambridge, Milan

  /// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final List<String> cambridgeTrader = transactions
      .where((e) => e.trader.city == 'Cambridge')
      .toList()
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .toSet()
      .toList();

  cambridgeTrader.sort();
  print(cambridgeTrader); // Alan, Brian, Raoul

  /// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final List<String> traderName =
      transactions.map((e) => e.trader.name).toSet().toList();
  traderName.sort();
  print(traderName); // Alan, Brian, Mario, Raoul

  /// 5. 밀라노에 거래자가 있는가?

  final List<String> milanTraders = transactions
      .where((e) => e.trader.city == 'Milan')
      .map((e) => e.trader.name)
      .toSet()
      .toList();

  print(milanTraders); // Mario

  final milanTraderExists =
      transactions.any((transaction) => transaction.trader.city == 'Milan');

  if (milanTraderExists) {
    print('밀라노에 거래자가 있습니다.');
  } else {
    print('밀라노에 거래자가 없습니다.');
  }

  /// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  final List<Transaction> cambridgeTraderTransaction =
      transactions.where((e) => e.trader.city == 'Cambridge').toSet().toList();

  print(cambridgeTraderTransaction);

  /// 7. 전체 트랜잭션 중 최대값은 얼마인가?
  final maxValue = transactions.map((e) => e.value).max;
  print('전체 트랜잭션 중 최대값: $maxValue'); // 1000

  /// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final minValue = transactions.map((e) => e.value).min;
  print('전체 트랜잭션 중 최소값: $minValue'); // 300
}
