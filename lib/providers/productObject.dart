import 'package:flutter/material.dart';

class ProductData with ChangeNotifier {
  String id;
  String name;
  String description;
  double price;
  String quality;
  String imageUrl;
  DateTime date;

  ProductData({
    this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.quality,
    @required this.imageUrl,
    this.date,
  });
}
