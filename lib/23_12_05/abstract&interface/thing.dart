abstract interface class Thing {
  double _weight;

  Thing({
    required double weight,
  }) : _weight = weight;

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  @override
  String toString() {
    return 'Thing{_weight: $_weight}';
  }
}
