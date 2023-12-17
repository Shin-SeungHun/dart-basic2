class Dates {
  String maximum;
  String minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toJson() {
    return {
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );
  }
}
