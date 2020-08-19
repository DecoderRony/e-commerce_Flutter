import 'package:flutter/material.dart';

class ProductData with ChangeNotifier {
  String id;
  String name;
  String description;
  int price;
  String quality;
  String imageUrl;
  DateTime date;
  bool isFav;

  ProductData({
    this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.quality,
    @required this.imageUrl,
    this.date,
    this.isFav = false,
  });

  void toggleFav() {
    if (isFav)
      isFav = false;
    else
      isFav = true;

    notifyListeners();
  }
}
