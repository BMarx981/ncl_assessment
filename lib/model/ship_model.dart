class ShipModel {
  final String name;
  final String capacity;
  final String crew;
  final String inauguralDate;

  ShipModel({
    required this.name,
    required this.capacity,
    required this.crew,
    required this.inauguralDate,
  });

  factory ShipModel.fromJson(Map<String, dynamic> json) {
    final String name = json['name'];
    final String cap = json['shipFacts']['passengerCapacity'];
    final String crew = json['shipFacts']['crew'];
    final String date = json['shipFacts']['inauguralDate'];
    return ShipModel(
      name: name,
      capacity: cap,
      crew: crew,
      inauguralDate: date,
    );
  }
}
