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
    return 'Trader{_name: $_name, _city: $_city}';
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
    return 'Transaction{_trader: $_trader, _year: $_year, _value: $_value}';
  }
}

final transactions = [
  Transaction(trader: Trader(name: "Brian", city: "Cambridge"), year: 2011, value: 300),
  Transaction(trader: Trader(name: "Raoul", city: "Cambridge"), year: 2012, value: 1000),
  Transaction(trader: Trader(name: "Raoul", city: "Cambridge"), year: 2011, value: 400),
  Transaction(trader: Trader(name: "Mario", city: "Milan"), year: 2012, value: 710),
  Transaction(trader: Trader(name: "Mario", city: "Milan"), year: 2012, value: 700),
  Transaction(trader: Trader(name: "Alan", city: "Cambridge"), year: 2012, value: 950),
];

void main(){

}
