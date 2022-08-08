class ShipModel {
  final String name;
  final String capacity;
  final String crew;
  final String inauguralDate;
  final String imageUrl;

  ShipModel({
    required this.name,
    required this.capacity,
    required this.crew,
    required this.inauguralDate,
    required this.imageUrl,
  });

  factory ShipModel.fromJson(Map<String, dynamic> json) {
    // cast all fields as non nullable Strings
    final String name = json['name'] as String;
    final String cap = json['shipFacts']['passengerCapacity'] as String;
    final String crew = json['shipFacts']['crew'] as String;
    final String date = json['shipFacts']['inauguralDate'] as String;
    String imageUrl =
        json['imagePath'][0].split("||")[0].replaceAll("\\", "") as String;
    String mainUrl = "http://www.ncl.com/";
    imageUrl = mainUrl + imageUrl;

    return ShipModel(
      name: name,
      capacity: cap,
      crew: crew,
      inauguralDate: date,
      imageUrl: imageUrl,
    );
  }
}
