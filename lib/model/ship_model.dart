import 'package:flutter/material.dart';

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
    final String name = json['name'];
    final String cap = json['shipFacts']['passengerCapacity'];
    final String crew = json['shipFacts']['crew'];
    final String date = json['shipFacts']['inauguralDate'];
    String imageUrl = json['imagePath'][0].split("||")[0].replaceAll("\\", "");

    imageUrl = "https://www.ncl.com/" + imageUrl;

    return ShipModel(
      name: name,
      capacity: cap,
      crew: crew,
      inauguralDate: date,
      imageUrl: imageUrl,
    );
  }
}
