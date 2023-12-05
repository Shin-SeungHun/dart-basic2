abstract interface class Thing {
  double _weight;

  Thing({
    required double weight,
  }) : _weight = weight;

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }
}
