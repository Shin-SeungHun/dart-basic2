class Computer{
  String name;
  int price;
  String color;
  String makerName;

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
  });

  @override
  String toString() {
    return 'Computer{name: $name, price: $price, color: $color, makerName: $makerName}';
  }
}