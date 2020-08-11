import 'package:flutter/material.dart';

class ProductData {
  String id = DateTime.now().toString();
  String name;
  String description;
  double price;
  String quality;
  String imageUrl;
  DateTime date = DateTime.now();

  ProductData({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.quality,
    @required this.imageUrl,
  });
}
