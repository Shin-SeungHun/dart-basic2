class Sword {
  String name;
  int damage;

  Sword({
    required this.name,
    required this.damage,
  });

  @override
  String toString() {
    return 'Sword{name: $name, damage: $damage}';
  }
}
