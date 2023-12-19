class User {
  int _id;
  String _name;
  String _address;
  String _contact;
  DateTime _birth;
  DateTime? _registrationDate;

  User({
    required int id,
    required String name,
    required String address,
    required String contact,
    required DateTime birth,
    DateTime? registrationDate,
  })  : _id = id,
        _name = name,
        _address = address,
        _contact = contact,
        _birth = birth,
        _registrationDate = registrationDate;

  DateTime? get registrationDate => _registrationDate;

  set registrationDate(DateTime? value) {
    _registrationDate = value;
  }

  DateTime get birth => _birth;

  set birth(DateTime value) {
    _birth = value;
  }

  String get contact => _contact;

  set contact(String value) {
    _contact = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  @override
  String toString() {
    return 'User{id: $_id, name: $_name, address: $_address, contact: $_contact, birth: $_birth, registrationDate: $_registrationDate}';
  }
}
